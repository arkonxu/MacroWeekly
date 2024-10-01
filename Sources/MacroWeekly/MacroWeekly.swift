


// Declaracion de las macros

@attached(member, names: named(init), named(shared))
public macro Singleton() = #externalMacro(module: "MacroWeeklyMacros", type: "SingletonMacro")


@freestanding(expression)
public macro Localize(_ value: String) -> String = #externalMacro(module: "MacroWeeklyMacros", type: "LocalizableMacro")
