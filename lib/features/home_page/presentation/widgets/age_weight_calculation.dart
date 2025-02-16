import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1w2/core/utils/app_colors.dart';

class AgeWeightCalculation extends StatefulWidget {
  const AgeWeightCalculation(
      {super.key,
      required this.title,
      required this.addFunction,
      required this.subFunction,
      required this.num});
  final String title;
  final dynamic num;
  final VoidCallback addFunction;
  final VoidCallback subFunction;
  @override
  State<AgeWeightCalculation> createState() => _AgeWeightCalculationState();
}

class _AgeWeightCalculationState extends State<AgeWeightCalculation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 10.sp,
                  ),
                ),
                Text(
                  '${widget.num}',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 18.sp,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.iconButtonColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: widget.subFunction,
                        iconSize: 16.h,
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.iconButtonColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: widget.addFunction,
                        iconSize: 16.h,
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
