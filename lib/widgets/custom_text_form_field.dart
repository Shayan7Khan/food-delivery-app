import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  const CustomTextFormField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            labelText: labelText,
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        );
  }
}