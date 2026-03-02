// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_image_transformation.dart';

/// A type of transformation that is applied over images.
class GooglePrivacyDlpV2ImageTransformations {
  final pulumi.Input<List<GooglePrivacyDlpV2ImageTransformation>>? transforms;

  /// Creates a new [GooglePrivacyDlpV2ImageTransformations].
  /// [transforms] Optional.
  GooglePrivacyDlpV2ImageTransformations({
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transforms': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2ImageTransformation>, List<Map<String, dynamic>>>(transforms, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2ImageTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2ImageTransformations.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ImageTransformations(
      transforms: map['transforms'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2ImageTransformation>(map['transforms'], (value) => GooglePrivacyDlpV2ImageTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

