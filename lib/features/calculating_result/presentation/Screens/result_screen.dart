import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1w2/core/functions/navigation.dart';
import 'package:task1w2/core/utils/app_colors.dart';
import 'package:task1w2/core/utils/app_constants.dart';
import 'package:task1w2/core/utils/app_strings.dart';
import 'package:task1w2/core/widgets/custom_button.dart';
import 'package:task1w2/features/calculating_result/presentation/widgets/bmi_status_section.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result;
  final List<Map<String, dynamic>> bmiStatus = const [
    {
      bmiLabel: 'UNDER WEIGHT',
      bmiMessage: 'Your weight is less than normal. Check a doctor!',
      bmiColor: AppColors.bmiUnderWeight,
    },
    {
      bmiLabel: 'NORMAL',
      bmiMessage: 'You have a normal body weight. Good Job!',
      bmiColor: AppColors.bmiNormal,
    },
    {
      bmiLabel: 'OVERWEIGHT',
      bmiMessage: 'Your weight is more than normal. Go to GYM!',
      bmiColor: AppColors.bmiOverWeight,
    },
    {
      bmiLabel: 'Obesity',
      bmiMessage:
          'Your weight is not healthy. Check the doctor and watch ur food!',
      bmiColor: AppColors.bmiObesity,
    },
  ];
  Map<String, dynamic> bmiDetector(double result) {
    switch (result) {
      case < 18.5:
        return bmiStatus[0];
      case >= 18.5 && < 25:
        return bmiStatus[1];
      case >= 25 && < 30:
        return bmiStatus[2];
      default:
        return bmiStatus[3];
    }
  }

  @override
  Widget build(BuildContext context) {
    final bmiMap = bmiDetector(result);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          SizedBox(height: 15.sp),
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.all(5.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Your Result',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: BmiStatusSection(
                      status: bmiMap[bmiLabel],
                      color: bmiMap[bmiColor],
                      message: bmiMap[bmiMessage],
                      result: result,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: CustomButton(
                  title: AppStrings.recalculate,
                  onPressed: () => context.navigateWithName(homePage))),
        ],
      ),
    );
  }
}
