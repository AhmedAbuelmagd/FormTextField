import UIKit

extension UITextField {
    func updateInputType(type: FormTextFieldInputType) {
        switch type {
        case .Default, .Unknown:
            self.autocapitalizationType = .Sentences
            self.autocorrectionType = .Default
            self.keyboardType = .Default
            break

        case .Name:
            self.autocapitalizationType = .Words
            self.autocorrectionType = .No
            self.keyboardType = .NamePhonePad
            break

        case .Username:
            self.autocapitalizationType = .None
            self.autocorrectionType = .No
            self.keyboardType = .NamePhonePad
            break

        case .PhoneNumber:
            self.autocapitalizationType = .None
            self.autocorrectionType = .No
            self.keyboardType = .PhonePad
            break

        case .Integer:
            self.autocapitalizationType = .None
            self.autocorrectionType = .No
            self.keyboardType = .PhonePad
            break

        case .Decimal:
            self.autocapitalizationType = .None
            self.autocorrectionType = .No
            self.keyboardType = .NumberPad
            break

        case .Address:
            self.autocapitalizationType = .Words
            self.autocorrectionType = .Default
            self.keyboardType = .ASCIICapable
            break

        case .Email:
            self.autocapitalizationType = .None
            self.autocorrectionType = .No
            self.keyboardType = .EmailAddress
            break

        case .Password:
            self.autocapitalizationType = .None
            self.autocorrectionType = .No
            self.keyboardType = .ASCIICapable
            self.secureTextEntry = true
            break
        }
    }
}
