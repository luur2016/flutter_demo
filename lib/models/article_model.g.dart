// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleCategoryDTO _$ArticleCategoryDTOFromJson(Map<String, dynamic> json) {
  return ArticleCategoryDTO(
    cateName: json['cateName'] as String,
    cateId: json['cateId'] as int,
  );
}

Map<String, dynamic> _$ArticleCategoryDTOToJson(ArticleCategoryDTO instance) =>
    <String, dynamic>{
      'cateId': instance.cateId,
      'cateName': instance.cateName,
    };
