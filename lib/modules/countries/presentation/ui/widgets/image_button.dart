import 'package:countries_demo/core/utils/export.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String? image;
  final IconData? icon;
  final bool isSelected;
  const ButtonWidget({
    super.key,
    this.onTap,
    this.image,
    this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: context.width * .08,
        child: Icon(
          icon,
          color: isSelected ? Colors.red : Colors.black,
        ),
      ),
    );
  }
}
