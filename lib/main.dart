import 'package:comping/screens/NewPasswordScreen.dart';
import 'package:comping/screens/SignUpScreen.dart';
import 'package:comping/screens/SuccesAdmis.dart';
import 'package:comping/screens/loginscreen.dart';
import 'package:comping/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Splash(),
    );
  }
}
