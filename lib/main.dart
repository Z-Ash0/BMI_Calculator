import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1w2/core/routes/app_routes.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => Task1(
        routes: AppRoutes(),
      ),
    ),
  );
}

class Task1 extends StatelessWidget {
  const Task1({super.key, required this.routes});
  final AppRoutes routes;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 490),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: routes.routeNavigate,
      ),
    );
  }
}
