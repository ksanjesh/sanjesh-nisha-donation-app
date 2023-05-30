import 'package:donation_app/Screens/log_in_screen.dart';
import 'package:donation_app/Screens/sign_p_screen.dart';
import 'package:flutter/material.dart';

import 'constants/my_routes.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: Colors.indigo,
        ),
        labelStyle: TextStyle(
          color: Colors.orange
        )
      )
    ),

      initialRoute: MyRoutes.initial,
    routes: {
      MyRoutes.initial: (context) => const LogInScreen(),
      MyRoutes.signUpScreenRoutes: (context) => const SignUpScreen()
    },
  ));
}
