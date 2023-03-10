import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/resources/utils/routes/routes.dart';
import 'package:newsapp/resources/utils/routes/routes_name.dart';
import 'package:newsapp/view_models/news_view_model.dart';
import 'package:provider/provider.dart';

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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsViewModel()), //0
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          fontFamily: 'RobotoSlab',
        ),
        initialRoute: RoutesName.homeScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
