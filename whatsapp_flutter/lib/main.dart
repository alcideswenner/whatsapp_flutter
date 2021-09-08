import 'package:flutter/material.dart';

import 'view/Login/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(
      accentColor: Color(0xff25D366),
      primaryColor: Color(0xff075E54)),
    home: Login(),
  ));
}
