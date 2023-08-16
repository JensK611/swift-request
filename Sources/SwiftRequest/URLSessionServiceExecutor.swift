import Foundation

public class URLSessionServiceExecutor: ServiceExecutor {
    public var decoder: Decoding
    public var encoder: Encoding
    private let session: URLSession
    
    public init(
        _ session: URLSession = .shared,
        decoder: Decoding = JSONDecoder(),
        encoder: Encoding = JSONEncoder()
    ) {
        self.session = session
        self.decoder = decoder
        self.encoder = encoder
    }
    
    public func execute(_ request: Request) async throws -> (Data, HTTPURLResponse) {
        let urlRequest = try request.asURLRequest(encoder: encoder)
        let (data, response) = try await session.data(for: urlRequest) as! (Data, HTTPURLResponse)
        guard (200..<300).contains(response.statusCode) else {
            throw HTTPResponseError(data: data, response: response)
        }
        return (data, response)
    }
}
