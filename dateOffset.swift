var dateString = "2016-07-10"
var dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"
let s = dateFormatter.dateFromString(dateString)


extension NSDate {

func offsetFrom(date:NSDate) -> String {

    let dayHourMinuteSecond: NSCalendarUnit = [.Day, .Hour, .Minute, .Second]
    let difference = NSCalendar.currentCalendar().components(dayHourMinuteSecond, fromDate: date, toDate: self, options: [])

    let seconds = "\(difference.second)s"
    let minutes = "\(difference.minute)m" + " " + seconds
    let hours = "\(difference.hour)h" + " " + minutes
    let days = "\(difference.day)d" + " " + hours

    if difference.day    > 0 { return days }
    if difference.hour   > 0 { return hours }
    if difference.minute > 0 { return minutes }
    if difference.second > 0 { return seconds }
    
    print(days)
    return ""
}

}


let date = NSDate()
print(date.offsetFrom(s!))