

import 'package:dio/dio.dart';
import 'package:flutter_app_demo/core/utils/dio_client.dart';
import 'package:flutter_app_demo/models/article_model.dart';

class ArticleCateApi {

  static Future<List<ArticleCategoryDTO>> listCates() async{
    String articleCateUrl = 'home/listArticleCate';
    List<ArticleCategoryDTO> list = [];
    try {
      Response response = await DioClient.getInstance().get(articleCateUrl);
      if(response.statusCode == 200){
        if (response.data == null || response.data['data'] == null) {
          return list;
        }
        (response.data["data"] as List).forEach((item) {
          ArticleCategoryDTO dto = ArticleCategoryDTO.fromJson(item);
          list.add(dto);
        });


      }else{
        throw Exception("StatusCode: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
      return null;
    }

    return list;
  }

}