
class AuthUser{
  final String _email;
  final String _password;
  final String _username;
  final String _phoneNumber;

  AuthUser(this._email, this._password, this._username, this._phoneNumber);

  String get phoneNumber => _phoneNumber;

  String get username => _username;

  String get password => _password;

  String get email => _email;

}