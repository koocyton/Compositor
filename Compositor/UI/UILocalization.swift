import SwiftUI

/// English UI copy looked up in `zh-Hans.lproj`. Missing keys stay in English.
nonisolated enum UICopy {
    static func string(_ key: String) -> String {
        Bundle.main.localizedString(forKey: key, value: key, table: nil)
    }

    static func text(_ key: String) -> Text {
        Text(LocalizedStringKey(stringLiteral: key))
    }
}
