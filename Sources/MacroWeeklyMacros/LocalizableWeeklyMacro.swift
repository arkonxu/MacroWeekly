import SwiftSyntax
import SwiftCompilerPlugin
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct LocalizeMacro: ExpressionMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        guard let argument = node.argumentList.first?.expression else {
            fatalError("compiler bug: the macro does not have any arguments")
        }
        guard argument.is(StringLiteralExprSyntax.self) else {
            fatalError("compiler bug: the macro only accepts string literals")
        }
        
        return """
        {
        NSLocalizedString(\(argument), comment: "")
        }()
        """
    }
}
