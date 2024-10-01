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

print(#Localizable("TEST_KEY_1"))
print(NSLocalizedString("TEST_KEY_1", comment: ""))
