import 'package:newsapp/resources/app_urls.dart';

import '../data/network/base_api_services.dart';
import '../data/network/network_api_service.dart';

class NewsRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> newsheadlineApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrls.headlineEndPoint);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

// 2b37b68d6a314d839b2e1e09e16c1004 api key