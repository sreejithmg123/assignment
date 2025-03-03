import 'package:assignment/modules/home/view/home_view.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:assignment/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: FontPalette.themFont,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: RouteGenerator.instance.generateRoute,
        home: HomeScreen(),
      ),
    );
  }
}
