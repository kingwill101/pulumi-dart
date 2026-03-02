// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_transformation_response.dart';
import 'google_privacy_dlp_v2_record_suppression_response.dart';

/// A type of transformation that is applied over structured data such as a table.
class GooglePrivacyDlpV2RecordTransformationsResponse {
  /// Transform the record by applying various field transformations.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldTransformationResponse>> fieldTransformations;
  /// Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  final pulumi.Input<List<GooglePrivacyDlpV2RecordSuppressionResponse>> recordSuppressions;

  /// Creates a new [GooglePrivacyDlpV2RecordTransformationsResponse].
  /// [fieldTransformations] Transform the record by applying various field transformations.
  /// [recordSuppressions] Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  GooglePrivacyDlpV2RecordTransformationsResponse({
    required this.fieldTransformations,
    required this.recordSuppressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldTransformations': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2FieldTransformationResponse>, List<Map<String, dynamic>>>(fieldTransformations, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldTransformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordSuppressions': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2RecordSuppressionResponse>, List<Map<String, dynamic>>>(recordSuppressions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2RecordSuppressionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2RecordTransformationsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordTransformationsResponse(
      fieldTransformations: (pulumi.Input.decodeList<GooglePrivacyDlpV2FieldTransformationResponse>(map['fieldTransformations'], (value) => GooglePrivacyDlpV2FieldTransformationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recordSuppressions: (pulumi.Input.decodeList<GooglePrivacyDlpV2RecordSuppressionResponse>(map['recordSuppressions'], (value) => GooglePrivacyDlpV2RecordSuppressionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

