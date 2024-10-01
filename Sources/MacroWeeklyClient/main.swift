import Foundation
import MacroWeekly
import MacroWeeklyMacros

// Ej 1:

@Singleton
struct WeeklyTestModel {
    let name = "Test"
}

let testingMacroModel = WeeklyTestModel.shared

// Ej 2

let url = #URL("https://google.es")

// Ej 3

print(#Localizable("TEST_KEY_1"))
