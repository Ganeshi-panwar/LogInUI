//
//  String +Extension.swift
//  LogInUI
//
//  Created by Mohit Mali on 12/09/23.
//

import Foundation
extension String{
    func validateEmailId()-> Bool{
        let emailRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return applyPredicateOnRegex(regexstr: emailRegx)
        
    }
    func validatePassword(mini: Int = 8, max: Int = 8)->Bool{
        //Minimum 8 characters at least 1 alphabet and 1 number
        var passRegEx = ""
        if mini>=max{
            passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{\(mini),}$"
                     }
        else{
            passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{\(mini),\(max)}$"
              }
        return applyPredicateOnRegex(regexstr: passRegEx)
    }
    func applyPredicateOnRegex(regexstr: String)->Bool{
        let trimmedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "Self MATCHES %@", regexstr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
        
    }
}

