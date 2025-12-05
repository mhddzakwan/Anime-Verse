import 'package:animer_verse/config/routes.dart';

import 'package:animer_verse/providers/app_state_provider.dart';
import 'package:animer_verse/providers/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await GoogleSignIn.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'AnimeVerse',
        theme: ThemeData(fontFamily: 'Urbanist'),
        routerConfig: createRouter(),
        debugShowCheckedModeBanner: false,
      );
  }
}
