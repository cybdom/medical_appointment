import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_appointment/ui/screens/home.dart';
import 'package:medical_appointment/ui/screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<bool> _checkIsFirstSeen;
  @override
  void initState() {
    super.initState();
    _checkIsFirstSeen = checkIsFirstSeen();
  }

  Future<bool> checkIsFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("seen")) {
      return true;
    } else {
      prefs.setBool("seen", true);
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.openSansTextTheme()?.copyWith(
          labelLarge: TextStyle(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            ?.copyWith(background: Colors.white),
      ),
      home: FutureBuilder(
        future: _checkIsFirstSeen,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null && snapshot.data!)
              return HomeScreen();
            else
              return OnBoardingScreen();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
      routes: {
        'home': (context) => HomeScreen(),
      },
    );
  }
}
