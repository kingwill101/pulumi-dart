// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';
import 'google_privacy_dlp_v2_quasi_identifier_field_response.dart';

/// An auxiliary table containing statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).
class GooglePrivacyDlpV2StatisticalTableResponse {
  /// Quasi-identifier columns.
  final pulumi.Input<List<GooglePrivacyDlpV2QuasiIdentifierFieldResponse>> quasiIds;
  /// The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> relativeFrequency;
  /// Auxiliary table location.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableResponse> table;

  /// Creates a new [GooglePrivacyDlpV2StatisticalTableResponse].
  /// [quasiIds] Quasi-identifier columns.
  /// [relativeFrequency] The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.
  /// [table] Auxiliary table location.
  GooglePrivacyDlpV2StatisticalTableResponse({
    required this.quasiIds,
    required this.relativeFrequency,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quasiIds': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2QuasiIdentifierFieldResponse>, List<Map<String, dynamic>>>(quasiIds, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2QuasiIdentifierFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relativeFrequency': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(relativeFrequency, (value) => value.toMap()),
      'table': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryTableResponse, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2StatisticalTableResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StatisticalTableResponse(
      quasiIds: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2QuasiIdentifierFieldResponse>(map['quasiIds']!, (value) => GooglePrivacyDlpV2QuasiIdentifierFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      relativeFrequency: pulumi.Input.fromValue(GooglePrivacyDlpV2FieldIdResponse.fromMap((map['relativeFrequency']! as Map).cast<String, dynamic>())),
      table: pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryTableResponse.fromMap((map['table']! as Map).cast<String, dynamic>())),
    );
  }
}

