// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_image_transformations.dart';
import 'google_privacy_dlp_v2_info_type_transformations.dart';
import 'google_privacy_dlp_v2_record_transformations.dart';
import 'google_privacy_dlp_v2_transformation_error_handling.dart';

/// The configuration that controls how the data will change.
class GooglePrivacyDlpV2DeidentifyConfig {
  /// Treat the dataset as an image and redact.
  final pulumi.Input<GooglePrivacyDlpV2ImageTransformations>? imageTransformations;
  /// Treat the dataset as free-form text and apply the same free text transformation everywhere.
  final pulumi.Input<GooglePrivacyDlpV2InfoTypeTransformations>? infoTypeTransformations;
  /// Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  final pulumi.Input<GooglePrivacyDlpV2RecordTransformations>? recordTransformations;
  /// Mode for handling transformation errors. If left unspecified, the default mode is `TransformationErrorHandling.ThrowError`.
  final pulumi.Input<GooglePrivacyDlpV2TransformationErrorHandling>? transformationErrorHandling;

  /// Creates a new [GooglePrivacyDlpV2DeidentifyConfig].
  /// [imageTransformations] Treat the dataset as an image and redact.
  /// [infoTypeTransformations] Treat the dataset as free-form text and apply the same free text transformation everywhere.
  /// [recordTransformations] Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  /// [transformationErrorHandling] Mode for handling transformation errors. If left unspecified, the default mode is `TransformationErrorHandling.ThrowError`.
  GooglePrivacyDlpV2DeidentifyConfig({
    this.imageTransformations,
    this.infoTypeTransformations,
    this.recordTransformations,
    this.transformationErrorHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTransformations': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ImageTransformations, Map<String, dynamic>>(imageTransformations, (value) => value.toMap()),
      'infoTypeTransformations': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InfoTypeTransformations, Map<String, dynamic>>(infoTypeTransformations, (value) => value.toMap()),
      'recordTransformations': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2RecordTransformations, Map<String, dynamic>>(recordTransformations, (value) => value.toMap()),
      'transformationErrorHandling': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2TransformationErrorHandling, Map<String, dynamic>>(transformationErrorHandling, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DeidentifyConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyConfig(
      imageTransformations: (() { final guardedValue = map['imageTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ImageTransformations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infoTypeTransformations: (() { final guardedValue = map['infoTypeTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2InfoTypeTransformations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordTransformations: (() { final guardedValue = map['recordTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2RecordTransformations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformationErrorHandling: (() { final guardedValue = map['transformationErrorHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2TransformationErrorHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

