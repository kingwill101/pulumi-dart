// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';

/// Options defining BigQuery table and row identifiers.
class GooglePrivacyDlpV2BigQueryOptionsResponse {
  /// References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldIdResponse>> excludedFields;
  /// Table fields that may uniquely identify a row within the table. When `actions.saveFindings.outputConfig.table` is specified, the values of columns specified here are available in the output table under `location.content_locations.record_location.record_key.id_values`. Nested fields such as `person.birthdate.year` are allowed.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldIdResponse>> identifyingFields;
  /// Limit scanning only to these fields. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldIdResponse>> includedFields;
  /// Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  final pulumi.Input<String> rowsLimit;
  /// Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  final pulumi.Input<int> rowsLimitPercent;
  final pulumi.Input<String> sampleMethod;
  /// Complete BigQuery table reference.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableResponse> tableReference;

  /// Creates a new [GooglePrivacyDlpV2BigQueryOptionsResponse].
  /// [excludedFields] References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  /// [identifyingFields] Table fields that may uniquely identify a row within the table. When `actions.saveFindings.outputConfig.table` is specified, the values of columns specified here are available in the output table under `location.content_locations.record_location.record_key.id_values`. Nested fields such as `person.birthdate.year` are allowed.
  /// [includedFields] Limit scanning only to these fields. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  /// [rowsLimit] Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  /// [rowsLimitPercent] Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  /// [sampleMethod] Required.
  /// [tableReference] Complete BigQuery table reference.
  GooglePrivacyDlpV2BigQueryOptionsResponse({
    required this.excludedFields,
    required this.identifyingFields,
    required this.includedFields,
    required this.rowsLimit,
    required this.rowsLimitPercent,
    required this.sampleMethod,
    required this.tableReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedFields': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2FieldIdResponse>, List<Map<String, dynamic>>>(excludedFields, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identifyingFields': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2FieldIdResponse>, List<Map<String, dynamic>>>(identifyingFields, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedFields': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2FieldIdResponse>, List<Map<String, dynamic>>>(includedFields, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowsLimit': rowsLimit,
      'rowsLimitPercent': rowsLimitPercent,
      'sampleMethod': sampleMethod,
      'tableReference': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryTableResponse, Map<String, dynamic>>(tableReference, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryOptionsResponse(
      excludedFields: (pulumi.Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(map['excludedFields'], (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identifyingFields: (pulumi.Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(map['identifyingFields'], (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedFields: (pulumi.Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(map['includedFields'], (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rowsLimit: (map['rowsLimit'] as String).input(),
      rowsLimitPercent: (map['rowsLimitPercent'] as int).input(),
      sampleMethod: (map['sampleMethod'] as String).input(),
      tableReference: (GooglePrivacyDlpV2BigQueryTableResponse.fromMap((map['tableReference'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

