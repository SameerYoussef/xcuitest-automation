/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Text-related accessibility examples
*/

import Foundation
import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Environment Variable")
                .foregroundColor(.red)
                .bold()
            
            Text(String(ProcessInfo.processInfo.environment["ENVIRONMENT_VARIABLE_INT"] ?? "not found"))
                .accessibility(label: Text("Environment Variable"))
            
            LargeSpacer()

            Text("Arguments Passed On Launch")
                .foregroundColor(.red)
                .bold()
            
            Text(UserDefaults.standard.bool(forKey: "ARGUMENTS_PASSED_ON_LAUNCH_BOOL") ? "True" : "False")
                .accessibility(label: Text("Arguments Passed On Launch"))

            LargeSpacer()

            VStack(alignment: .leading) {
                Text("Stacked Multiple Line Text Line 1")
                Text("This is on another line")
            }
            .accessibilityElement(children: .combine)

            Text("Simple Multiple Line Text\nThis is on another line")
                .lineLimit(nil)
            
            LargeSpacer()

            Text("Text with value and label")
                .accessibility(value: Text("Text Value"))
                .accessibility(label: Text("Text Label"))
        }
    }
}
