// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_transformation.dart';

/// A type of transformation that will scan unstructured text and apply various `PrimitiveTransformation`s to each finding, where the transformation is applied to only values that were identified as a specific info_type.
class GooglePrivacyDlpV2InfoTypeTransformations {
  /// Transformation for each infoType. Cannot specify more than one for a given infoType.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeTransformation>> transformations;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeTransformations].
  /// [transformations] Transformation for each infoType. Cannot specify more than one for a given infoType.
  GooglePrivacyDlpV2InfoTypeTransformations({
    required this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformations': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2InfoTypeTransformation>, List<Map<String, dynamic>>>(transformations, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoTypeTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2InfoTypeTransformations.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeTransformations(
      transformations: (pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeTransformation>(map['transformations'], (value) => GooglePrivacyDlpV2InfoTypeTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

