import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, this.prefixIcon, required this.hint, required this.warn, this.controller});

  final String label,hint,warn;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(label,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 3.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 3.0,
              )
            )
          ),
          validator: (value) =>
                value == null || value.isEmpty ? warn: null,
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}

