import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import MacroWeeklyMacros

@main
struct Plugins: CompilerPlugin {
  let providingMacros: [Macro.Type] = [
    SingletonMacro.self,
    LocalizableMacro.self
  ]
}
