import '../utils/CONSTANTS.dart';
class Validator  {
  late final String? email;
  late final String? password;
  late final String? username;
  late final String? mobileNum;
  late String userInput;
  String _validateEmail() => RegExp(Constants.emailPattern).hasMatch(userInput)
      ? email = userInput
      : "Please enter a valid email";

  String _validatePassword() =>
      RegExp(Constants.passwordPattern).hasMatch(userInput)
          ? password = userInput
          : "Please enter a valid email";

  String _validateUsername() =>username=userInput;

  String _validatePhoneNum() =>
      RegExp(Constants.phoneNumPattern).hasMatch(userInput)
          ? mobileNum = userInput
          : "Please enter a valid egyptian phone number starts with 010,011,012 or 015";

  @override
  String validate(InputType key) {
    switch (key) {
      case InputType.email:
        return _validateEmail();
      case InputType.password:
        return _validatePassword();
      case InputType.username:
        return _validateUsername();
      case InputType.phoneNumber:
        return _validatePhoneNum();
    }
  }



}

