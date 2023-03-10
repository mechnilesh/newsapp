import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_headline_reponse_model.dart';
import 'package:newsapp/resources/constants/colors.dart';
import 'package:newsapp/resources/utils/routes/routes_name.dart';
import 'package:newsapp/view_models/news_view_model.dart';
import 'package:newsapp/views/news_detail_screen.dart';
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
    // print(newsBloc.subject.stream);
  }

  @override
  Widget build(BuildContext context) {
//  return StreamBuilder<MovieResponse>(
//         stream: moviesBloc.subject.stream,
//         builder: (context, AsyncSnapshot<MovieResponse> snapshot) {
//           if (snapshot.hasData) {
//             if (snapshot.data.error != null && snapshot.data.error.length > 0) {
//               return _buildErrorWidget(snapshot.data.error);
//             }
//             return _buildHomeWidget(snapshot.data);
//           } else if (snapshot.hasError) {
//             return _buildErrorWidget(snapshot.error);
//           } else {
//             return _buildLoadingWidget();
//           }
//         });
//   }

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
