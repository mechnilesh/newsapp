import 'package:flutter/material.dart';
import 'package:newsapp/repository/news_repo.dart';
import '../models/news_headline_reponse_model.dart';
import '../resources/utils/utils.dart';

class NewsViewModel with ChangeNotifier {
  final NewsRepository _newsRepository = NewsRepository();
  bool isLoading = true;
  List<Articles>? newsArticles;

  Future<void> getNewsAPI(
    BuildContext context,
  ) async {
    isLoading = true;
    notifyListeners();

    await _newsRepository.newsheadlineApi().then((value) async {
      NewsHeadLineResponseModel newsHeadLineResponseModel =
          NewsHeadLineResponseModel.fromJson(value);

      isLoading = false;
      notifyListeners();

      if (newsHeadLineResponseModel.status == "ok") {
        newsArticles = newsHeadLineResponseModel.articles;

        notifyListeners();
      } else {
        Utils.showSnackBar(
            context, newsHeadLineResponseModel.status.toString(), Colors.red);
      }
    }).onError((error, stackTrace) async {
      
      throw {
        await Utils.showSnackBar(context, '$error', Colors.red),
      };
    });
  }
}
