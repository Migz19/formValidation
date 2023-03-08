
class UserModel {
  final String _name;
  final String _message;
  final bool _isOnline;
  String _imageUri;
  final String _email;

  UserModel(
      {required name,
       message,
       isOnline,
         email,
      imageUri =
          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
      })
      : _message = message,
        _name = name,
        _email=email,
        _imageUri = imageUri,
        _isOnline = isOnline;

  String get imageUri => _imageUri;

  bool get isOnline => _isOnline;

  String get message => _message;

  String get name => _name;
}
