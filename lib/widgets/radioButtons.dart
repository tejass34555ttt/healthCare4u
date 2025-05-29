import 'package:flutter/material.dart';

class Radiobuttons extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;
  const Radiobuttons({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged
    });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Radio<String>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}