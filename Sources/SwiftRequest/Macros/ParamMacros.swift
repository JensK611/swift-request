// NOTE: Attached member macros are not officialy supported and is not supported since Xcode 15 beta 6 instead we use generic typealiases
//@attached(member)
//public macro Path(_ name: String = "") = #externalMacro(module: "SwiftRequestMacros", type: "ParamMacro")
//
//@attached(member)
//public macro QueryParam(_ name: String = "") = #externalMacro(module: "SwiftRequestMacros", type: "ParamMacro")
//
//
//@attached(member)
//public macro Header(_ name: String = "") = #externalMacro(module: "SwiftRequestMacros", type: "ParamMacro")
//
//@attached(member)
//public macro FormField(_ name: String = "") = #externalMacro(module: "SwiftRequestMacros", type: "ParamMacro")
//
//@attached(member)
//public macro Body() = #externalMacro(module: "SwiftRequestMacros", type: "BodyMacro")

public typealias QueryParam<T> = T
public typealias Path<T> = T
public typealias Header<T> = T
public typealias FormField<T> = T
public typealias Body<T> = T
