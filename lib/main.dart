import 'package:flutter/material.dart';
import 'package:hackthon/screens/login_screen/login_screen.dart';
import 'package:hackthon/screens/otp_screen/otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'presentation/login/login_view.dart';
import 'presentation/verfiy/vefriy_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => LoginScreen(),
      'verify': (context) => OtpScreen()
    },
  ));
}