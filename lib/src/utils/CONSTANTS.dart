class Constants{
 static String emailPattern= r'\S+@\S+\.com,eg$';
 static String passwordPattern=" ";
 static String phoneNumPattern=r'^01(0|1|2|5)\d{8}$';
}
enum InputType {
  username,
  email,
  password,
  phoneNumber
}