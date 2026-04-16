import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styling/app_styles.dart';
import '../../../widgets/spacing_widget.dart';

class CustomOrTextWidget extends StatelessWidget {
  final String doText;
  const CustomOrTextWidget({
    super.key,
    required this.doText
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100.w,
          child: Divider(
            thickness: 2,
            color: Color(0xffE8ECF4),
          ),
        ),
        WidthSpace(width: 10),
        Text("Or $doText with", style: AppStyles.gery14w600Style,),
        WidthSpace(width: 10),
        SizedBox(
          width: 100.w,
          child: Divider(
            thickness: 2,
            color: Color(0xffE8ECF4),
          ),
        ),
      ],
    );
  }
}
