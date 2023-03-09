import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/resources/utils/routes/routes.dart';
import 'package:newsapp/resources/utils/routes/routes_name.dart';
import 'package:newsapp/views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the font
  final fontLoader = FontLoader('RobotoSlab');
  fontLoader.addFont(rootBundle.load('assets/fonts/RobotoSlab-Bold.ttf'));
  fontLoader.addFont(rootBundle.load('assets/fonts/RobotoSlab-Regular.ttf'));
  await fontLoader.load();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        fontFamily: 'RobotoSlab',
      ),
      initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
