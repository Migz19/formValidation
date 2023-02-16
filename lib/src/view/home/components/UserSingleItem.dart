import 'package:firstapp/src/model/user_model.dart';

import 'package:flutter/material.dart';

class UserSingleItem extends StatefulWidget {
  final UserModel _user;
  UserSingleItem(this._user);
  @override
  State<UserSingleItem> createState() => _UserSingleItemState();
}

class _UserSingleItemState extends State<UserSingleItem> {

  // Color backgroundColor(bool isOnline){
  //   if(isOnline) {
  //     return Colors.green;
  //   } else
  //     {
  //       return Colors.red;
  //     }
  // }
 @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(

        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 40,
                child:Image(
                  image: NetworkImage(widget._user.imageUri),
                )
              ),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          Text(widget._user.name)
        ],
      ),
    );
  }
}
