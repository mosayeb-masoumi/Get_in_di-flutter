import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it_locator_project/domain/models/home_model/home_model.dart';
import 'package:get_it_locator_project/network/network.dart';

class HomeRepository{

  Future<dynamic> getHomeData() async {
    var dio = DioUtil.getInstance();
    // String apiUrl = ("${ClientConfig.BASE_URL}api/user/profile");
    String apiUrl = ("https://jsonplaceholder.typicode.com/todos/1");

    try {
      Response response = await dio!.get(apiUrl);

      if (response.statusCode == 204 || response.statusCode == 200) {
        var map = Map<String, dynamic>.from(response.data);
        try{

          HomeModel model = HomeModel.fromJson(map);
          return model;
        }catch(e){
          return "error";
        }

      } else {
        return "error";
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 500 || e.response?.statusCode == 502) {
        return "error";
      } else {
        return "error";
      }
    }
  }

}