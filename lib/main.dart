import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmev2/providers/book_provider.dart';

import 'screens/detail/detailscreen.dart';
import 'screens/home/homescreens.dart';
import 'screens/sign_in.dart';

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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SignIn(),
          '/home': (context) => const Homescreen(),
          '/detail': (context) => const DetailScreens(),
        },
      ),
    );
  }
}
