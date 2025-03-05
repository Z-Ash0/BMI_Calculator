import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1w2/core/utils/app_colors.dart';

class BmiStatusSection extends StatelessWidget {
  const BmiStatusSection({
    super.key,
    required this.result,
    required this.status,
    required this.color,
    required this.message,
  });

  final String status;
  final Color color;
  final String message;
  final double result;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(3.r),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            status,
            style: TextStyle(
                color: color, fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          Text(
            result.toStringAsFixed(2),
            style: TextStyle(
                fontSize: 32.sp,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.r),
            child: Text(
              message,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 8.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
