import 'package:flutter/material.dart';
import '../../../controllers/Validator.dart';
import '../../../utils/CONSTANTS.dart';


class CustomTextInput extends StatefulWidget {
  final String _label;
  IconData? _prefixIcon, _suffixIcon;
  final TextEditingController _controller;
  final TextInputType _keyboardInputType;
  final InputType _inputType;
  final Validator loginValidator=Validator();

  CustomTextInput({required label,
    required prefixIcon,
    suffixIcon,
    required inputType,
    required keyboardInputType,
    required controller})
      : _label = label,
        _prefixIcon = prefixIcon,
        _suffixIcon = suffixIcon,
        _keyboardInputType=keyboardInputType,
        _controller = controller,
        _inputType = inputType;

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget._label,
      keyboardType: widget._keyboardInputType,
      controller: widget._controller,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                if (widget._suffixIcon == Icons.visibility) {
                  widget._suffixIcon = Icons.visibility_off;
                } else {
                  widget._suffixIcon = Icons.visibility;
                }
              });
            },
            icon: Icon(
              widget._suffixIcon,
              color: Colors.orangeAccent,
            ),
          ),
          prefixIcon: Icon(widget._prefixIcon),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.orangeAccent),
              borderRadius: BorderRadius.circular(12))),
      validator:(value) => widget.loginValidator.validate(widget._inputType) ,
    );
  }

}
