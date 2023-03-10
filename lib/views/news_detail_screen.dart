import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';

class NewsDetailScrenn extends StatefulWidget {
  const NewsDetailScrenn({super.key});

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
              "https://www.pakainfo.com/wp-content/uploads/2021/09/image-url-for-testing.jpg",
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
                      "Spider-man: ore: all 23 Marvel movies, ranked",
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
                        Text(
                          "Vox.com",
                          style: TextStyle(
                            color: subHeadingFontColor,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "2019-07-03",
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
                      "This is cothere is content that cannot be seen. If the content is legThis is cothere is content that cannot be seen. If the content is legThis is cothere is content that cannot be seen. If the content is legThis is cothere is content that cannot be seen. If the content is legThis is cothere is content that cannot be seen. If the content is legThis is cothere is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView. This is considered an error condition because it indicates that there is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView. This is considered an error condition because it indicates that there is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView. This is considered an error condition because it indicates that there is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView.",
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
