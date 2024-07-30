import 'package:flutter_aula_5/check_box_option.dart';
import 'package:flutter/material.dart';

class CheckBoxCustom extends StatefulWidget {
  const CheckBoxCustom({super.key, required this.item});

  final CheckBoxOption item;

  @override
  State<CheckBoxCustom> createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.title),
      value: widget.item.checked,
      onChanged: (value) {
        setState(() {
          widget.item.checked = value!;
        });
      },
    );
  }
}
