import 'package:flutter/material.dart';

class StandardForm extends StatefulWidget {
  final String label;

  StandardForm({required this.label});

  @override
  State<StandardForm> createState() => _StandardFormState();
}

class _StandardFormState extends State<StandardForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(widget.label),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
