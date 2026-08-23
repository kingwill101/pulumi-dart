// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_transformation_response.dart';

/// A type of transformation that will scan unstructured text and apply various `PrimitiveTransformation`s to each finding, where the transformation is applied to only values that were identified as a specific info_type.
class GooglePrivacyDlpV2InfoTypeTransformationsResponse {
  /// Transformation for each infoType. Cannot specify more than one for a given infoType.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeTransformationResponse>> transformations_;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeTransformationsResponse].
  /// [transformations_] Transformation for each infoType. Cannot specify more than one for a given infoType.
  const GooglePrivacyDlpV2InfoTypeTransformationsResponse({
    required this.transformations_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformations': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2InfoTypeTransformationResponse>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoTypeTransformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2InfoTypeTransformationsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeTransformationsResponse(
      transformations_: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeTransformationResponse>(map['transformations']!, (value) => GooglePrivacyDlpV2InfoTypeTransformationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
