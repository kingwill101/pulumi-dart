// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'info_type_transformation.dart';

class TextConfig {
  /// Transformations to apply to the detected data, overridden by `exclude_info_types`.
  final pulumi.Input<List<InfoTypeTransformation>>? additionalTransformations;
  /// InfoTypes to skip transforming, overriding `additional_transformations`.
  final pulumi.Input<List<String>>? excludeInfoTypes;
  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final pulumi.Input<List<InfoTypeTransformation>>? transformations_;

  /// Creates a new [TextConfig].
  /// [additionalTransformations] Transformations to apply to the detected data, overridden by `exclude_info_types`.
  /// [excludeInfoTypes] InfoTypes to skip transforming, overriding `additional_transformations`.
  /// [transformations_] The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  TextConfig({
    this.additionalTransformations,
    this.excludeInfoTypes,
    this.transformations_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTransformations': ?pulumi.Input.mapOptionalInputValue<List<InfoTypeTransformation>, List<Map<String, dynamic>>>(additionalTransformations, (value) => pulumi.Input.encodeList<InfoTypeTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludeInfoTypes': ?excludeInfoTypes,
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<InfoTypeTransformation>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<InfoTypeTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TextConfig.fromMap(Map<String, dynamic> map) {
    return TextConfig(
      additionalTransformations: (() { final guardedValue = map['additionalTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InfoTypeTransformation>(guardedValue, (value) => InfoTypeTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludeInfoTypes: (() { final guardedValue = map['excludeInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InfoTypeTransformation>(guardedValue, (value) => InfoTypeTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

