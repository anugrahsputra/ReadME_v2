import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmev2/providers/book_provider.dart';
import 'package:readmev2/providers/page_provider.dart';

import 'screens/detail/detailscreen.dart';
import 'screens/home/homescreens.dart';
import 'screens/mainscreen.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BookProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SignIn(),
          '/sign-up': (context) => const SignUp(),
          '/home': (context) => const Mainscreen(),
          '/detail': (context) => const DetailScreens(),
        },
      ),
    );
  }
}
