import 'package:z_prompt/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String? walletLogo;
  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.walletLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size(46.w, 6.5.h),
        side: const BorderSide(color: secondaryColor, width: 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: onPressed,
      child: walletLogo != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 1.w),
                Image.asset(
                  walletLogo!,
                  scale: 13,
                ),
                Text(text,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: secondaryColor,
                    )),
                SizedBox(width: 3.w),
              ],
            )
          : Text(
              text,
              style: GoogleFonts.dmSans().copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 11.sp,
                color: secondaryColor,
              ),
            ),
    );
  }
}
