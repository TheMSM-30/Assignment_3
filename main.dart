import 'package:flutter/material.dart';
import 'Assignment3/home_Screen.dart';



void main() {
  runApp(PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            theme: ThemeData(
              primaryColor: Color(0xFF1565C0),

              brightness: Brightness.light,
              scaffoldBackgroundColor: Colors.white,

              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),

              appBarTheme: AppBarTheme(
                backgroundColor: Color(0xFF1565C0),
                foregroundColor: Colors.white,
                centerTitle: false,
                iconTheme: IconThemeData(),
              ),

              //Text Theme
              textTheme: TextTheme(
                headlineMedium: TextStyle(fontSize: 22, color: Colors.black),
              ),

              inputDecorationTheme: InputDecorationTheme(
                hintStyle: TextStyle(
                  fontSize: 20, color: Colors.black.withValues(alpha: .3),),
                labelStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),

                errorStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),

            ),

            title: 'This is a Practice App',
            color: Colors.red,
            //initialRoute: '/home',
            home: HomeScreen(),
          );
        }
  }

