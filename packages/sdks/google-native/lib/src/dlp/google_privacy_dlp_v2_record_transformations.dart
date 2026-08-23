// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_transformation.dart';
import 'google_privacy_dlp_v2_record_suppression.dart';

/// A type of transformation that is applied over structured data such as a table.
class GooglePrivacyDlpV2RecordTransformations {
  /// Transform the record by applying various field transformations.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldTransformation>>? fieldTransformations;
  /// Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  final pulumi.Input<List<GooglePrivacyDlpV2RecordSuppression>>? recordSuppressions;

  /// Creates a new [GooglePrivacyDlpV2RecordTransformations].
  /// [fieldTransformations] Transform the record by applying various field transformations.
  /// [recordSuppressions] Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  const GooglePrivacyDlpV2RecordTransformations({
    this.fieldTransformations,
    this.recordSuppressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldTransformations': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2FieldTransformation>, List<Map<String, dynamic>>>(fieldTransformations, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordSuppressions': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2RecordSuppression>, List<Map<String, dynamic>>>(recordSuppressions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2RecordSuppression, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2RecordTransformations.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordTransformations(
      fieldTransformations: (() { final guardedValue = map['fieldTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2FieldTransformation>(guardedValue, (value) => GooglePrivacyDlpV2FieldTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recordSuppressions: (() { final guardedValue = map['recordSuppressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2RecordSuppression>(guardedValue, (value) => GooglePrivacyDlpV2RecordSuppression.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
