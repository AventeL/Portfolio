import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final TextEditingController controller;
  const CustomTextField(this.hint, this.controller, {Key? key})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(hintText: widget.hint),
    );
  }
}
