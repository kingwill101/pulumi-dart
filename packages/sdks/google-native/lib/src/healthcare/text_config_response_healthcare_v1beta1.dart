// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'info_type_transformation_response_healthcare_v1beta1.dart';

/// Configures how to transform sensitive text `InfoTypes`.
class TextConfigResponseHealthcareV1beta1 {
  /// Additional transformations to apply to the detected data, overriding `profile`.
  final pulumi.Input<List<InfoTypeTransformationResponseHealthcareV1beta1>> additionalTransformations;
  /// InfoTypes to skip transforming, overriding `profile`.
  final pulumi.Input<List<String>> excludeInfoTypes;
  /// Base profile type for text transformation.
  final pulumi.Input<String> profileType;
  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final pulumi.Input<List<InfoTypeTransformationResponseHealthcareV1beta1>> transformations_;

  /// Creates a new [TextConfigResponseHealthcareV1beta1].
  /// [additionalTransformations] Additional transformations to apply to the detected data, overriding `profile`.
  /// [excludeInfoTypes] InfoTypes to skip transforming, overriding `profile`.
  /// [profileType] Base profile type for text transformation.
  /// [transformations_] The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  TextConfigResponseHealthcareV1beta1({
    required this.additionalTransformations,
    required this.excludeInfoTypes,
    required this.profileType,
    required this.transformations_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTransformations': pulumi.Input.mapInputValue<List<InfoTypeTransformationResponseHealthcareV1beta1>, List<Map<String, dynamic>>>(additionalTransformations, (value) => pulumi.Input.encodeList<InfoTypeTransformationResponseHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludeInfoTypes': excludeInfoTypes,
      'profileType': profileType,
      'transformations': pulumi.Input.mapInputValue<List<InfoTypeTransformationResponseHealthcareV1beta1>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<InfoTypeTransformationResponseHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TextConfigResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TextConfigResponseHealthcareV1beta1(
      additionalTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<InfoTypeTransformationResponseHealthcareV1beta1>(map['additionalTransformations']!, (value) => InfoTypeTransformationResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      excludeInfoTypes: pulumi.Input.fromValue((map['excludeInfoTypes'] as List).cast<String>()),
      profileType: pulumi.Input.fromValue(map['profileType'] as String),
      transformations_: pulumi.Input.fromValue(pulumi.Input.decodeList<InfoTypeTransformationResponseHealthcareV1beta1>(map['transformations']!, (value) => InfoTypeTransformationResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

