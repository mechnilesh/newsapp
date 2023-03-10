import 'package:flutter/material.dart';
import 'package:newsapp/resources/constants/colors.dart';
import 'package:newsapp/view_models/news_view_model.dart';
import 'package:provider/provider.dart';
import '../resources/widgets/NewsCardWidget.dart';

class HeadlineScreen extends StatefulWidget {
  const HeadlineScreen({super.key});

  @override
  State<HeadlineScreen> createState() => _HeadlineScreenState();
}

class _HeadlineScreenState extends State<HeadlineScreen> {
  @override
  void initState() {
    super.initState();
    context.read<NewsViewModel>().getNewsAPI(context);
  }

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
        child: context.watch<NewsViewModel>().isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              )
            : ListView.builder(
                itemCount: context.watch<NewsViewModel>().newsArticles!.length,
                itemBuilder: (context, index) {
                  return NewsCardWidget(
                    imageUrl: context
                        .watch<NewsViewModel>()
                        .newsArticles![index]
                        .urlToImage
                        .toString(),
                    heading: context
                        .watch<NewsViewModel>()
                        .newsArticles![index]
                        .title
                        .toString(),
                    publisher: context
                        .watch<NewsViewModel>()
                        .newsArticles![index]
                        .author
                        .toString(),
                    date: context
                        .watch<NewsViewModel>()
                        .newsArticles![index]
                        .publishedAt
                        .toString()
                        .substring(1, 10),
                    index: index,
                  );
                },
              ),
      ),
    );
  }
}
