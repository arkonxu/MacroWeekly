import MacroWeekly
import MacroWeeklyMacros

// Ej 1:

@Singleton
struct WeeklyTestModel {
    let name = "Test"
}

let testingMacroModel = WeeklyTestModel.shared
