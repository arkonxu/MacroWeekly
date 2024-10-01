import SwiftSyntax
import SwiftCompilerPlugin
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import Foundation

struct URLMacro: ExpressionMacro {
    static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> ExprSyntax {
        guard
            let argument = node.argumentList.first?.expression,
            let segments = argument.as(StringLiteralExprSyntax.self)?.segments,
            segments.count == 1,
            case .stringSegment(let literalSegment)? = segments.first
        else {
            throw NSError()
        }
        
        guard let _ = URL(string: literalSegment.content.text) else {
            throw NSError()
        }
        
        return "URL(string: \(argument))!"
    }
}
