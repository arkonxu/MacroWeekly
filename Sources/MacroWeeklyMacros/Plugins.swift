import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

@main
struct Plugins: CompilerPlugin {
  let providingMacros: [Macro.Type] = [
    SingletonMacro.self,
    LocalizableMacro.self,
    URLMacro.self
  ]
}
