import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1w2/core/utils/app_colors.dart';

class CustomGenderSelector extends StatefulWidget {
  const CustomGenderSelector(
      {super.key,
      required this.text,
      required this.icon,
      required this.isSelected,
      required this.onTap});
  final String text;
  final IconData icon;
  final bool? isSelected;
  final VoidCallback onTap;

  @override
  State<CustomGenderSelector> createState() => _CustomGenderSelectorState();
}

class _CustomGenderSelectorState extends State<CustomGenderSelector> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected == true
              ? AppColors.isSelectedColor
              : AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: AppColors.whiteColor,
              size: MediaQuery.sizeOf(context).width * 0.15,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
