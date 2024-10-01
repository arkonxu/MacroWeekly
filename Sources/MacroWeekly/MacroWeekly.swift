import Foundation


// Declaracion de las macros

@attached(member, names: named(init), named(shared))
public macro Singleton() = #externalMacro(module: "MacroWeeklyMacros", type: "SingletonMacro")


@freestanding(expression)
public macro Localizable(_ value: String) -> String = #externalMacro(module: "MacroWeeklyMacros", type: "LocalizableMacro")

@freestanding(expression)
public macro URL(_ string: String) -> URL = #externalMacro(module: "MacroWeeklyMacros", type: "URLMacro")
