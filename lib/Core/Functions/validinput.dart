import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Username not valid";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Email not valid";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Phone Number not valid";
    }
  }
  if(val.length < min){
    return "Value can't be less than $min.";
  }
  if(val.length > max){
    return "Value can't be larger than $max.";
  }
  if(val.isEmpty){
    return "can't be Empty";
  }
}
