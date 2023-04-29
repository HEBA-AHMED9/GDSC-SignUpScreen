import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  Custom_TextField({
    required this.text,
    required this.icoon,
    this.iconPass,
    this.obscur,
    this.keybor,
    this.controller,
    this.validator,
  });
  String? text;
  Icon? icoon;
  Icon? iconPass;
  bool? obscur;
  dynamic keybor;
  TextEditingController? controller = new TextEditingController();
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscur!,
      keyboardType: keybor,

      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        labelText: '$text',
        prefixIcon: icoon,
        prefixIconColor: Colors.black,
        hintStyle: TextStyle(color: Colors.grey),
        suffixIcon: iconPass,

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black26),
          gapPadding: 20,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black),
          gapPadding:20,
        ),
      ),
    );
  }
}
