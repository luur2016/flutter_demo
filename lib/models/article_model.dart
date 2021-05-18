

import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';


@JsonSerializable(nullable: false)
class ArticleCategoryDTO {
  int cateId;
  String cateName;

  ArticleCategoryDTO({this.cateName, this.cateId});


  factory ArticleCategoryDTO.fromJson(Map<String, dynamic> json) => _$ArticleCategoryDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleCategoryDTOToJson(this);


}