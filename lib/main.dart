import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'providers/book_provider.dart';
import 'providers/bookmark_provider.dart';
import 'providers/page_provider.dart';
import 'screens/detail/detailscreen.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BookProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
        ChangeNotifierProvider(create: (context) => BookmarkProvider())
      ],
      child: MaterialApp(
        color: Colors.white,
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
