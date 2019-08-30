import Foundation

@objc(EditTextViewManager)
class EditTextViewManager: UITextField {
    @objc var onTextUpdate: RCTDirectEventBlock?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addTarget(self, action: #selector(EditTextViewManager.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if (onTextUpdate != nil) {
            onTextUpdate!(["value": textField.text])
        }
    }
}
