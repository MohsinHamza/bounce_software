// import 'dart:convert';
//
// import 'package:bouncesoftware/core/constant.dart';
// import 'package:http/http.dart' as http;
//
// class HttpService {
//   Future<dynamic> getRequest(String url) async {
//     final response = await http.get(Uri.parse(Endpoints.base + url));
//     print(Endpoints.base + url);
//     if (response.statusCode == 200) return jsonDecode(response.body);
//     return null;
//   }
//
//   Future<http.Response?> postRequest(String url, dynamic body) async {
//     final response = await http.post(Uri.parse(Endpoints.base + url), body: body);
//     print(response.body);
//     print(response.statusCode);
//     if (response.statusCode == 200) return response;
//     return null;
//   }
//
//   Future<http.Response?> patchRequest(String url, dynamic body) async {
//     final response = await http.patch(Uri.parse(Endpoints.base + url), body: body);
//     print(response.body);
//     print(response.statusCode);
//     if (response.statusCode == 200) return response;
//     return null;
//   }
//
//   Future<http.Response?> updateRequest(String url, dynamic body) async {
//     final response = await http.put(Uri.parse(Endpoints.base + url), body: body);
//     print(response.body);
//     print(response.statusCode);
//     if (response.statusCode == 200) return response;
//     return null;
//   }
// }
