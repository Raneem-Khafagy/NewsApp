import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/screens/home.dart';
import 'utils/themes/theme_config.dart';
void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(create: (_) => ThemeNotifier()),
      ],
      child: MyApp(),
    ),);
}
class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: themeNotifier.themeData,
      routes: {
        '/HomeScreen': (context) => HomeScreen(),
      },
      home: HomeScreen(),
    );
  }
}
 