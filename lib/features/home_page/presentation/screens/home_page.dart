import 'package:flutter/material.dart';
import 'package:task1w2/core/functions/navigation.dart';
import 'package:task1w2/core/utils/app_colors.dart';
import 'package:task1w2/core/utils/app_constants.dart';
import 'package:task1w2/core/utils/app_strings.dart';
import 'package:task1w2/features/calculating_result/model/bmi_calc.dart';
import 'package:task1w2/features/home_page/presentation/widgets/age_weight_section.dart';
import 'package:task1w2/core/widgets/custom_button.dart';
import 'package:task1w2/features/home_page/presentation/widgets/gender_section.dart';
import 'package:task1w2/features/home_page/presentation/widgets/height_slider_measure.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 18;
  Bmi bmi = Bmi(height: 180, weight: 75);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: Text(
          AppStrings.bmiCalculator,
          style: TextStyle(color: AppColors.whiteColor, fontSize: 12.sp),
        ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        elevation: 20,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.fromLTRB(5.r, 10.r, 5.r, 10.r),
              child: Column(
                children: [
                  const Expanded(flex: 1, child: GenderSection()),
                  SizedBox(height: MediaQuery.sizeOf(context).height / 40),
                  Expanded(
                      flex: 1,
                      child: HeightSliderMeasure(
                        bmi: bmi,
                      )),
                  SizedBox(height: MediaQuery.sizeOf(context).height / 40),
                  Expanded(
                    flex: 1,
                    child: AgeWeightSection(
                      age: age,
                      bmi: bmi,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomButton(
              title: AppStrings.calculate,
              onPressed: () {
                context.navigateWithName(resultScreen,
                    arguments: bmi.calculateBmi());
                print(bmi.height);
                print(bmi.weight);
              },
            ),
          ),
        ],
      ),
    );
  }
}
