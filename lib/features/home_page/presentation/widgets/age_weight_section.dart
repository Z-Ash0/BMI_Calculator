import 'package:flutter/material.dart';
import 'package:task1w2/core/utils/app_strings.dart';
import 'package:task1w2/features/calculating_result/model/bmi_calc.dart';
import 'package:task1w2/features/home_page/presentation/widgets/age_weight_calculation.dart';

class AgeWeightSection extends StatefulWidget {
  const AgeWeightSection({super.key, required this.age, required this.bmi});
  final int age;
  final Bmi bmi;

  @override
  State<AgeWeightSection> createState() => _AgeWeightSectionState();
}

class _AgeWeightSectionState extends State<AgeWeightSection> {
  late int age;
  late double weight;
  @override
  void initState() {
    super.initState();
    age = widget.age;
    weight = widget.bmi.weight;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AgeWeightCalculation(
            title: AppStrings.weight,
            addFunction: () => setState(() {
              weight >= 200 ? 200 : weight += 0.5;
              widget.bmi.weight = weight;
            }),
            subFunction: () => setState(() {
              weight == 30 ? 30 : weight -= 0.5;
              widget.bmi.weight = weight;
            }),
            num: weight,
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width / 10),
        Expanded(
          child: AgeWeightCalculation(
            title: AppStrings.age,
            addFunction: () => setState(() => age >= 80 ? 80 : ++age),
            subFunction: () => setState(() => age == 1 ? 1 : --age),
            num: age,
          ),
        ),
      ],
    );
  }
}
