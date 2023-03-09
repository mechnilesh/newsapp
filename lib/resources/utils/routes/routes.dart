import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/resources/utils/routes/routes_name.dart';
import 'package:newsapp/views/home_screen.dart';
import 'package:newsapp/views/news_detail_screen.dart';

class Routes {
  static CupertinoPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //home screen
      case RoutesName.homeScreen:
        return CupertinoPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );

      //news detail screen
      case RoutesName.newsDetailSreen:
        return CupertinoPageRoute(
          builder: (BuildContext context) => const NewsDetailScrenn(),
        );

      default:
        return CupertinoPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined'),
              ),
            );
          },
        );
    }
  }
}
