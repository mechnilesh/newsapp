import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/resources/utils/routes/routes_name.dart';
import 'package:newsapp/views/headline_screen.dart';
import 'package:newsapp/views/news_detail_screen.dart';

class Routes {
  static CupertinoPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //home screen
      case RoutesName.homeScreen:
        return CupertinoPageRoute(
          builder: (BuildContext context) => const HeadlineScreen(),
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
