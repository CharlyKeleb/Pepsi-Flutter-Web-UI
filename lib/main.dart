import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pepsi_web_ui/pepsi/pepsi.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Web UI',
        debugShowCheckedModeBanner: false,
        theme: themeData(
          ThemeData(
            brightness: Brightness.dark,
            backgroundColor: Colors.black,
            primarySwatch: Colors.blue,
          ),
        ),
        home: PepsiUi(),
      );
    });
  }
}

// Apply font to our app's theme
ThemeData themeData(ThemeData theme) {
  return theme.copyWith(
    textTheme: GoogleFonts.corbenTextTheme(
      theme.textTheme,
    ),
  );
}
