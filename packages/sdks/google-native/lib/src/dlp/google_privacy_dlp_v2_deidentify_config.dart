// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_image_transformations.dart';
import 'google_privacy_dlp_v2_info_type_transformations.dart';
import 'google_privacy_dlp_v2_record_transformations.dart';
import 'google_privacy_dlp_v2_transformation_error_handling.dart';

/// The configuration that controls how the data will change.
class GooglePrivacyDlpV2DeidentifyConfig {
  /// Treat the dataset as an image and redact.
  final GooglePrivacyDlpV2ImageTransformations? imageTransformations;
  /// Treat the dataset as free-form text and apply the same free text transformation everywhere.
  final GooglePrivacyDlpV2InfoTypeTransformations? infoTypeTransformations;
  /// Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  final GooglePrivacyDlpV2RecordTransformations? recordTransformations;
  /// Mode for handling transformation errors. If left unspecified, the default mode is `TransformationErrorHandling.ThrowError`.
  final GooglePrivacyDlpV2TransformationErrorHandling? transformationErrorHandling;

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
      'imageTransformations': ?imageTransformations == null ? null : imageTransformations!.toMap(),
      'infoTypeTransformations': ?infoTypeTransformations == null ? null : infoTypeTransformations!.toMap(),
      'recordTransformations': ?recordTransformations == null ? null : recordTransformations!.toMap(),
      'transformationErrorHandling': ?transformationErrorHandling == null ? null : transformationErrorHandling!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DeidentifyConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyConfig(
      imageTransformations: map['imageTransformations'] == null ? null : GooglePrivacyDlpV2ImageTransformations.fromMap((map['imageTransformations'] as Map).cast<String, dynamic>()),
      infoTypeTransformations: map['infoTypeTransformations'] == null ? null : GooglePrivacyDlpV2InfoTypeTransformations.fromMap((map['infoTypeTransformations'] as Map).cast<String, dynamic>()),
      recordTransformations: map['recordTransformations'] == null ? null : GooglePrivacyDlpV2RecordTransformations.fromMap((map['recordTransformations'] as Map).cast<String, dynamic>()),
      transformationErrorHandling: map['transformationErrorHandling'] == null ? null : GooglePrivacyDlpV2TransformationErrorHandling.fromMap((map['transformationErrorHandling'] as Map).cast<String, dynamic>()),
    );
  }
}

