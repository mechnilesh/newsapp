import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/constants/colors.dart';
import '../view_models/news_view_model.dart';

class NewsDetailScrenn extends StatefulWidget {
  const NewsDetailScrenn({
    super.key,
    required this.index,
  });
  final int index;
  @override
  State<NewsDetailScrenn> createState() => _NewsDetailScrennState();
}

class _NewsDetailScrennState extends State<NewsDetailScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              context
                  .watch<NewsViewModel>()
                  .newsArticles![widget.index]
                  .urlToImage
                  .toString(),
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                primaryColor,
                Colors.black.withOpacity(0.6),
                Colors.transparent,
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black54,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                    Text(
                      context
                          .watch<NewsViewModel>()
                          .newsArticles![widget.index]
                          .title
                          .toString(),
                      style: TextStyle(
                        color: headingFontColor,
                        fontSize: 29,
                      ),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            context
                                .watch<NewsViewModel>()
                                .newsArticles![widget.index]
                                .author
                                .toString(),
                            style: TextStyle(
                              color: subHeadingFontColor,
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Text(
                          context
                              .watch<NewsViewModel>()
                              .newsArticles![widget.index]
                              .publishedAt
                              .toString()
                              .substring(1, 10),
                          style: TextStyle(
                            color: subHeadingFontColor,
                            fontSize: 20,
                            // fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      context
                          .watch<NewsViewModel>()
                          .newsArticles![widget.index]
                          .description
                          .toString(),
                      style: TextStyle(
                        color: subHeadingFontColor,
                        fontSize: 14,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
