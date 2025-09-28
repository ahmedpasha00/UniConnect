import 'package:flutter/material.dart';
import 'package:uni_connect/core/theme/app_colors.dart';

class CoustomButtom extends StatelessWidget {
  final String titel;
  final void Function()? onTap;
  final Color? backgroundColor;

  const CoustomButtom({
    super.key,
    required this.titel,
    this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(131, 145, 161, 1),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor, // لو مررت لون عادي
        gradient:
            backgroundColor ==
                null // لو ما فيش لون، نستخدم جريدينت
            ? LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  AppColors.primaryColor,
                  Color(0xFF89CFF0), // Sky Blue
                  Color(0xFF6A5ACD), // Slate Blue
                ],
              )
            : null,
      ),
      child: Center(
        child: Text(
          titel,
          style: TextStyle(
            color: backgroundColor == null ? Colors.white : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
