//This method checks to see if a text field has a capital letter, a number, a special character, as well as a length of at least 8 characters.

func checkTextSufficientComplexity(var text : String) -> Bool{
    let capitalLetterRegEx  = ".*[A-Z]+.*"
    var texttest = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
    var capitalresult = texttest.evaluateWithObject(text)
    
    let numberRegEx  = ".*[0-9]+.*"
    var texttest1 = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
    var numberresult = texttest1.evaluateWithObject(text)
    
    let specialCharacterRegEx  = ".*[!&^%$#@()/]+.*"
    var texttest2 = NSPredicate(format:"SELF MATCHES %@", specialCharacterRegEx)
    var specialresult = texttest2.evaluateWithObject(text)
    
    return capitalresult && numberresult && specialresult && text.characters.count >= 8
    
}

checkTextSufficientComplexity("Avatar123!") 

