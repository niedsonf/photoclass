import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoclass/constants/colors.dart';

class CancelButton extends StatefulWidget {
  final Function() onTap;
  const CancelButton({super.key, required this.onTap});

  @override
  State<CancelButton> createState() => _CancelButtonState();
}

class _CancelButtonState extends State<CancelButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text("Cancelar"));
  }
}
