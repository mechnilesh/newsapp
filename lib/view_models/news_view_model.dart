import 'package:flutter/material.dart';
import 'package:newsapp/repository/news_repo.dart';
import '../models/news_headline_reponse_model.dart';

class NewsViewModel with ChangeNotifier {
  final NewsRepository _newsRepository = NewsRepository();

  List<Articles>? newsArticles;

  Future<void> getNewsAPI(
    BuildContext context,
  ) async {
    await _newsRepository.newsheadlineApi().then((value) async {
      NewsHeadLineResponseModel newsHeadLineResponseModel =
          NewsHeadLineResponseModel.fromJson(value);

      // print(value);

      if (newsHeadLineResponseModel.status == "ok") {
        newsArticles = newsHeadLineResponseModel.articles;
     
        notifyListeners();
      } else {
        // Utils.showSnackBar(context, updatePasswordModel.message, Colors.red);
      }
    }).onError((error, stackTrace) async {
      throw {
        // await Utils.showSnackBar(context, '$error', red),
      };
    });
  }
}
