import 'package:flutter/material.dart';
import 'package:task1w2/core/utils/app_strings.dart';
import 'package:task1w2/features/home_page/presentation/widgets/custom_gender_selector.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  String? selectedGender;
  void selectGender(String gender) {
    setState(() {
      selectedGender = (selectedGender == gender) ? selectedGender : gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: CustomGenderSelector(
          text: AppStrings.male,
          icon: Icons.male,
          isSelected: selectedGender == AppStrings.male,
          onTap: () {
            selectGender(AppStrings.male);
          },
        )),
        SizedBox(width: MediaQuery.sizeOf(context).width / 10),
        Expanded(
            child: CustomGenderSelector(
          text: AppStrings.female,
          icon: Icons.female,
          isSelected: selectedGender == AppStrings.female,
          onTap: () {
            selectGender(AppStrings.female);
          },
        )),
      ],
    );
  }
}
