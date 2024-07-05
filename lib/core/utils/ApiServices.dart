import 'package:dio/dio.dart';

class ApiServices{

  final String baseURL = "https://www.googleapis.com/books/v1/";
  final Dio _dio = Dio();


  Future<Map<String,dynamic>> get({required String endpoint}) async{
    print("ApiServices is working on it...");
    var Response = await _dio.get("${baseURL+endpoint}");
    return Response.data;


  }
}