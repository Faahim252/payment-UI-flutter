import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';

class Appbuttons extends StatelessWidget {
  final IconData icon;
  final double? fontsize;
  final Function()? ontap;
  final Color? iconColor;
  final Color? textColor;
  final Color? backgroundColor;
  final String? text;
  const Appbuttons(
      {super.key,
      required this.icon,
      this.fontsize = 20,
      this.ontap,
      this.iconColor = Colors.white,
      this.textColor = AppColor.mainColor,
      this.backgroundColor = AppColor.mainColor,
      this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundColor,
              ),
              child: Icon(
                icon,
                size: 30,
                color: iconColor,
              ),
            ),
            text != null
                ? Text(
                    text!,
                    style: TextStyle(
                      fontSize: 14,
                      color: textColor,
                    ),
                  )
                : Container()
          ],
        ));
  }
}
