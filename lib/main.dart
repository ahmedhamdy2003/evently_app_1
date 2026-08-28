import 'package:evently_app_1/auth/screens/login_screen.dart';
import 'package:evently_app_1/common/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        LoginScreen.routeName:(_)=>LoginScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
