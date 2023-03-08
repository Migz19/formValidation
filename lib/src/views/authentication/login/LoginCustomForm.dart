import 'package:flutter/material.dart';

import '../../../utils/CONSTANTS.dart';
import '../components/CustomTextInput.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        key: _formKey,
        children: [
          CustomTextInput(
              label: "Email",
              prefixIcon: Icons.email,
              keyboardInputType: TextInputType.emailAddress,
              controller: _emailController,inputType: InputType.email),
          SizedBox(height: 40,),
          CustomTextInput(label: "Password", prefixIcon: Icons.lock, inputType: InputType.password, keyboardInputType: TextInputType.text, controller: _passController),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
