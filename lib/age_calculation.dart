import 'package:age/age.dart';

class AgeCalculation {
  
  //calculates age of person
  AgeDuration calculateAge(DateTime today, DateTime birthday) {
    AgeDuration age;
    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);
   return age;
  }

  //calculate next birthdaydate
  nextBirthday(DateTime today,DateTime birthday){
    DateTime temp =DateTime(today.year,birthday.month,birthday.day);
    
    DateTime nextBirthdayDate = temp.isBefore(today)?Age.add(date: temp, duration: AgeDuration(years: 1)): temp;

    AgeDuration nextBirthdayDuration = Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);
    return nextBirthdayDuration;
  }

//calculate next birthday WeekDay
int nextbday(DateTime today, DateTime birthday){
  DateTime temp =DateTime(today.year,birthday.month,birthday.day);

  DateTime nextBirthdayDate = temp.isBefore(today)?Age.add(date: temp, duration: AgeDuration(years: 1)): temp;
  return nextBirthdayDate.weekday;
}
}
