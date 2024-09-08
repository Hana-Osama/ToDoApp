import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  VoidCallback? onPressed;
  final String buttonText;
  IconData? icon;
  CustomElevatedButton({this.icon, this.onPressed, required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          side: BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
            width: 2,
            style: BorderStyle.solid,
          ),
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon == null
                ? SizedBox()
                : Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
            Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ],
        ));
  }
}
