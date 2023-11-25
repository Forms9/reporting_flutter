import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reporting_app/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/MenuAppController.dart';
import 'screens/main/main_screen.dart';

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Reporting App',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: bgColor,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white),
      canvasColor: secondaryColor,
    ),
    home: MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        ),
      ],
      child: MainScreen(),
    ),
  );
}


  // @override
  // void onWindowFocus() {
  //   setState(() {});
  // }
