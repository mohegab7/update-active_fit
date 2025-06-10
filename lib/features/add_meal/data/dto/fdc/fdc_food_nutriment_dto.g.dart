// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fdc_food_nutriment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FDCFoodNutrimentDTO _$FDCFoodNutrimentDTOFromJson(Map<String, dynamic> json) =>
    FDCFoodNutrimentDTO(
      id: (json['id'] as num?)?.toInt(),
      nutrientData: json['nutrient'] as Map<String, dynamic>?,
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FDCFoodNutrimentDTOToJson(
        FDCFoodNutrimentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nutrient': instance.nutrientData,
      'amount': instance.amount,
    };
