import 'package:flutter/material.dart';
class Custom_button extends StatelessWidget {
  Custom_button({this.text1, this.onTap,});
  String? text1;
  void Function()? onTap; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[700],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: double.infinity,
        height: 40,
        child: Center(
          child: Text(
            '$text1',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
