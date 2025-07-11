import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';


class customElevatedButton extends StatelessWidget {
  const customElevatedButton({
    super.key, this.onPressed, required this.label,
  });

  final void Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 500,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
          ),
          child: Text(label,
            style: TextStyle(
                fontSize: 20
            ),

          )

      ),
    );
  }
}

