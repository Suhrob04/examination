
import 'package:flutter/material.dart';
import 'package:mybigexam/providers/my_page_view_provider.dart';
import 'package:mybigexam/screens/home/home_page.dart';
import 'package:mybigexam/screens/splahs_screen/spalsh_screnn_1.dart';
import 'package:mybigexam/screens/splahs_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(
    providers:  [
      ChangeNotifierProvider(create: (context) => CurrentPage(),),
      ChangeNotifierProvider(create: (context) => CurrentPageforSplash(),)
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => SplashScreen1(),
        "/home": (context) => HomePage(),
      },
      initialRoute: "/",
    );
  }
}
