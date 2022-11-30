import 'package:flutter/material.dart';
import 'package:photoclass/constants/colors.dart';

class ConfirmButton extends StatelessWidget {
  final Function() onTap;
  const ConfirmButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(backgroundColor: orange),
        child: Text("Confirmar"));
  }
}
