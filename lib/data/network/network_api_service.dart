import 'dart:io';
import 'dart:convert';
import '../app_exceptions.dart';
import 'base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  //---get api response----//

  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(
            const Duration(seconds: 30),
          );
      // print(response.data);
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
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
          "Error occured while communicating with server with status code ${response.statusCode}",
        );
    }
  }
}
