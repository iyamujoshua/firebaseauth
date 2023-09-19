import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseauth/features/app/splashscreen/splashscreen.dart';
import 'package:firebaseauth/features/user_auth/presentation/pages/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'features/user_auth/presentation/pages/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA87XomeFoe2JghA6SQ6-IfOBZ6BZ1CAmM",
            appId: "1:473036674958:web:46aa8914fa56f5dd39b6df",
            messagingSenderId: "473036674958",
            projectId: "my-firebase-first-auth"));
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splashscreen(),
      routes: {
        '/login': (context) => login(),
        '/Signup': (context) => Signup(),
      },
    );
  }
}
