import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import '../app_exceptions.dart';
import 'base_api_services.dart';

class NetworkApiService extends BaseApiServices {
  final dio = Dio();

  //---get api response----//

  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await dio.get(url).timeout(
            const Duration(seconds: 60),
          );

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet");
    }

    return responseJson;
  }

  dynamic returnResponse(response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(
          response.body.toString(),
        );
      case 404:
        throw UnauthorisedException(
          response.body.toString(),
        );
      default:
        throw FetchDataException(
          "Error occured while communicating with server with status code${response.statusCode}",
        );
    }
  }
}
