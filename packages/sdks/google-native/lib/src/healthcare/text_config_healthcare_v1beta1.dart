// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'info_type_transformation_healthcare_v1beta1.dart';
import 'text_config_profile_type.dart';

/// Configures how to transform sensitive text `InfoTypes`.
class TextConfigHealthcareV1beta1 {
  /// Additional transformations to apply to the detected data, overriding `profile`.
  final pulumi.Input<List<InfoTypeTransformationHealthcareV1beta1>>? additionalTransformations;
  /// InfoTypes to skip transforming, overriding `profile`.
  final pulumi.Input<List<String>>? excludeInfoTypes;
  /// Base profile type for text transformation.
  final pulumi.Input<TextConfigProfileType>? profileType;
  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final pulumi.Input<List<InfoTypeTransformationHealthcareV1beta1>>? transformations_;

  /// Creates a new [TextConfigHealthcareV1beta1].
  /// [additionalTransformations] Additional transformations to apply to the detected data, overriding `profile`.
  /// [excludeInfoTypes] InfoTypes to skip transforming, overriding `profile`.
  /// [profileType] Base profile type for text transformation.
  /// [transformations_] The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  const TextConfigHealthcareV1beta1({
    this.additionalTransformations,
    this.excludeInfoTypes,
    this.profileType,
    this.transformations_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTransformations': ?pulumi.Input.mapOptionalInputValue<List<InfoTypeTransformationHealthcareV1beta1>, List<Map<String, dynamic>>>(additionalTransformations, (value) => pulumi.Input.encodeList<InfoTypeTransformationHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludeInfoTypes': ?excludeInfoTypes,
      'profileType': ?pulumi.Input.mapOptionalInputValue<TextConfigProfileType, String>(profileType, (value) => value.wireValue),
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<InfoTypeTransformationHealthcareV1beta1>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<InfoTypeTransformationHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TextConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TextConfigHealthcareV1beta1(
      additionalTransformations: (() { final guardedValue = map['additionalTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InfoTypeTransformationHealthcareV1beta1>(guardedValue, (value) => InfoTypeTransformationHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludeInfoTypes: (() { final guardedValue = map['excludeInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextConfigProfileType.fromValue(guardedValue as String)); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InfoTypeTransformationHealthcareV1beta1>(guardedValue, (value) => InfoTypeTransformationHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
