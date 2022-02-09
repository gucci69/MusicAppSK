//
//  TextFieldDataType.swift
//  MusicAppSK
//
//  Created by JoyDev on 09.02.2022.
//

import Foundation

class TextFieldDataType {
    
    enum CellType: Int {
        case login
        case email
        case password
        case repeatPassword
        case switchControl
        case button
        case secondButton
        
        var placeholder: String {
            switch self {
            case .login:
                return "Login"
            case .email:
                return "Email"
            case .password:
                return "Password"
            case .repeatPassword:
                return "Repeat Password"
            case .switchControl:
                return ""
            case .button:
                return "Войти"
            case .secondButton:
                return "Зарегистрироваться"
            }
        }
    }
}
