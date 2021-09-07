import 'package:flutter/material.dart';

import 'view/Login/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  
  );
  
  runApp(MaterialApp(
    home: Login(),
  ));
}
