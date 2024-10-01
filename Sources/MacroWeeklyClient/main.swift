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

let url: URL = #URL("https://google.es")

let url2 = URL(string: "https://google.es")!

// Ej 3

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#PrintArray(array)
