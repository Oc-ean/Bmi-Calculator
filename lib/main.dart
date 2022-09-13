import 'package:flutter/material.dart';
import 'screen/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0C0D23),
          appBarTheme: AppBarTheme(
            color: Color(0xFF0C0D23),
          ),
        ),
        home: InputPage());
  }
}
