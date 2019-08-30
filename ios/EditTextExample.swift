import Foundation

@objc(EditTextExampleSwift)
class EditTextExample: RCTViewManager {
    override func view() -> UIView! {
        return EditTextViewManager()
    }

    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
