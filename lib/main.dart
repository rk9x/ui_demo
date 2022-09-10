import 'package:flutter/material.dart';
import 'package:ui_demo/utils/size_config.dart';
import 'package:ui_demo/widgets/home_screen.dart';

void main() {
  runApp(const DemoUiApp());
}

class DemoUiApp extends StatelessWidget {
  const DemoUiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            SizeConfiguration().init(constraints, orientation);
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: MaterialColor(
                  Colors.grey.shade600.withOpacity(0.8).value,
                  const <int, Color>{
                    50: Color(0xFFA4A4BF),
                    100: Color(0xFFA4A4BF),
                    200: Color(0xFFA4A4BF),
                    300: Color(0xFF9191B3),
                    400: Color(0xFF7F7FA6),
                    500: Color(0xFF181861),
                    600: Color(0xFF6D6D99),
                    700: Color(0xFF5B5B8D),
                    800: Color(0xFF494980),
                    900: Color(0xFF181861),
                  },
                ),
              ),
              home: const HomeScreen(), //HomeScreen(),
            );
          },
        );
      },
    );
  }
}
