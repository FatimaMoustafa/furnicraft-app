import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback? onTap;
  const CustomIconButton({
    super.key,
    this.onTap,
    required this.iconPath
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 105,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Color(0xffE8ECF4), width: 1),
            borderRadius: BorderRadius.circular(12.r)
        ),
        child: Center(
            child: SvgPicture.asset(iconPath, width: 26.w,height: 26.h,)
        ),
      ),
    );
  }
}
