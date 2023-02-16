import 'package:firstapp/src/model/user_model.dart';
import 'package:firstapp/src/view/home/components/UserSingleItem.dart';
import 'package:firstapp/src/view/home/components/roundIconBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List usersList = <UserModel>[
    UserModel(name: "Ahmed", message: "Msaa2o", isOnline: true),
    UserModel(name: "Mazen", message: "Msaa2o", isOnline: false),
    UserModel(name: "Nour", message: "Msaa2o", isOnline: true),
    UserModel(name: "Pepsi Man", message: "Msaa2o", isOnline: true),
    UserModel(name: "Ahmed", message: "Msaa2o", isOnline: true),
    UserModel(name: "Mazen", message: "Msaa2o", isOnline: false),
    UserModel(name: "Nour", message: "Msaa2o", isOnline: true),
    UserModel(name: "Pepsi Man", message: "Msaa2o", isOnline: true),
    UserModel(name: "Ahmed", message: "Msaa2o", isOnline: true),
    UserModel(name: "Mazen", message: "Msaa2o", isOnline: false),
    UserModel(name: "Nour", message: "Msaa2o", isOnline: true),
    UserModel(name: "Pepsi Man", message: "Msaa2o", isOnline: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomRoundIcnBtn(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 20,
          ),
          onpressed: () {
            print("menu");
          },
          radius: 18,
          backgroundColor: Colors.grey.shade700,
        ),
        leadingWidth: 40,
        elevation: 20,
        title: Text('Chats',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 30)),
        actions: [
          CustomRoundIcnBtn(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 20,
            ),
            onpressed: () {
              print("camera");
            },
            radius: 18,
            backgroundColor: Colors.grey.shade700,
          ),
          SizedBox(
            width: 30,
          ),
          CustomRoundIcnBtn(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
            onpressed: () {
              //Todo msh sha8aaaaaaaaaaaaala
              print("search");
            },
            radius: 18,
            backgroundColor: Colors.grey.shade700,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.black87),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(30)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
          Expanded(

              child: ListView.separated(
                itemBuilder: (context, index) => UserSingleItem(usersList[index]),
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(8),
                itemCount: usersList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    Padding(padding: EdgeInsets.all(10)),
              ),
            ),

        ],
      ),
    );
  }
}
