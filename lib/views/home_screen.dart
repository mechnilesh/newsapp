import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/resources/constants/colors.dart';
import 'package:newsapp/resources/utils/routes/routes_name.dart';
import 'package:newsapp/views/news_detail_screen.dart';

import '../resources/widgets/NewsCardWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'HEADLINES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsCardWidget(
              imageUrl:
                  "https://www.pakainfo.com/wp-content/uploads/2021/09/image-url-for-testing.jpg",
            );
          },
        ),
      ),
    );
  }
}
