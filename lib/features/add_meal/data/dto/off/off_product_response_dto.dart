// ignore_for_file: non_constant_identifier_names

import 'package:active_fit/features/add_meal/data/dto/off/off_product_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'off_product_response_dto.g.dart';

@JsonSerializable()
class OFFProductResponseDTO {
  final int status;
  final String status_verbose;

  final OFFProductDTO product;

  OFFProductResponseDTO(
      {required this.status,
      required this.status_verbose,
      required this.product});

  factory OFFProductResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$OFFProductResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OFFProductResponseDTOToJson(this);
}
