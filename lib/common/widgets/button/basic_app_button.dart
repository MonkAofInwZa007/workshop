import 'package:flutter/material.dart';
import 'package:workshop/core/configs/theme/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double ? height;
  const BasicAppButton({
    required this.onPressed,
    required this.title,
    this.height,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ??  80),
      ),
      child: Text(
        title,
        style: const TextStyle(color: AppColors.lightBackground),
      )
    );
  }
}