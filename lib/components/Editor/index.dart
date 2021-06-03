import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String rotule;
  final String hint;
  final IconData icon;
  const Editor({this.controller, this.rotule, this.hint, this.icon});

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 20
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: rotule,
          hintText: hint
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}