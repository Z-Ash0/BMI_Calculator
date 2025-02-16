import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1w2/core/utils/app_colors.dart';
import 'package:task1w2/core/utils/app_strings.dart';
import 'package:task1w2/features/calculating_result/model/bmi_calc.dart';

class HeightSliderMeasure extends StatefulWidget {
  const HeightSliderMeasure({super.key, required this.bmi});
  final Bmi bmi;

  @override
  State<HeightSliderMeasure> createState() => _HeightSliderMeasureState();
}

class _HeightSliderMeasureState extends State<HeightSliderMeasure> {
  late double height;
  @override
  void initState() {
    super.initState();
    height = widget.bmi.height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppStrings.height,
            style: TextStyle(color: AppColors.textColor, fontSize: 10.sp),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '$height',
                style: TextStyle(color: AppColors.whiteColor, fontSize: 18.sp),
              ),
              TextSpan(
                text: AppStrings.cm,
                style: TextStyle(color: AppColors.whiteColor, fontSize: 8.sp),
              ),
            ]),
          ),
          Slider(
            activeColor: Colors.pink,
            divisions: ((250 - 40) / 0.5).round(),
            min: 40,
            max: 250,
            value: height,
            onChanged: (val) {
              setState(() {
                height = val;
                widget.bmi.height = height;
              });
            },
          ),
        ],
      ),
    );
  }
}
