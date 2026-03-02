// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'info_type_transformation_response.dart';

class TextConfigResponse {
  /// Transformations to apply to the detected data, overridden by `exclude_info_types`.
  final pulumi.Input<List<InfoTypeTransformationResponse>> additionalTransformations;
  /// InfoTypes to skip transforming, overriding `additional_transformations`.
  final pulumi.Input<List<String>> excludeInfoTypes;
  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final pulumi.Input<List<InfoTypeTransformationResponse>> transformations;

  /// Creates a new [TextConfigResponse].
  /// [additionalTransformations] Transformations to apply to the detected data, overridden by `exclude_info_types`.
  /// [excludeInfoTypes] InfoTypes to skip transforming, overriding `additional_transformations`.
  /// [transformations] The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  TextConfigResponse({
    required this.additionalTransformations,
    required this.excludeInfoTypes,
    required this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTransformations': pulumi.Input.mapInputValue<List<InfoTypeTransformationResponse>, List<Map<String, dynamic>>>(additionalTransformations, (value) => pulumi.Input.encodeList<InfoTypeTransformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludeInfoTypes': excludeInfoTypes,
      'transformations': pulumi.Input.mapInputValue<List<InfoTypeTransformationResponse>, List<Map<String, dynamic>>>(transformations, (value) => pulumi.Input.encodeList<InfoTypeTransformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TextConfigResponse.fromMap(Map<String, dynamic> map) {
    return TextConfigResponse(
      additionalTransformations: (pulumi.Input.decodeList<InfoTypeTransformationResponse>(map['additionalTransformations'], (value) => InfoTypeTransformationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludeInfoTypes: ((map['excludeInfoTypes'] as List).cast<String>()).input(),
      transformations: (pulumi.Input.decodeList<InfoTypeTransformationResponse>(map['transformations'], (value) => InfoTypeTransformationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

