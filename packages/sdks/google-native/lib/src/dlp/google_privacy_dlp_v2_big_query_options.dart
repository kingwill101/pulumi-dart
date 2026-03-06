// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_options_sample_method.dart';
import 'google_privacy_dlp_v2_big_query_table.dart';
import 'google_privacy_dlp_v2_field_id.dart';

/// Options defining BigQuery table and row identifiers.
class GooglePrivacyDlpV2BigQueryOptions {
  /// References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldId>>? excludedFields;
  /// Table fields that may uniquely identify a row within the table. When `actions.saveFindings.outputConfig.table` is specified, the values of columns specified here are available in the output table under `location.content_locations.record_location.record_key.id_values`. Nested fields such as `person.birthdate.year` are allowed.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldId>>? identifyingFields;
  /// Limit scanning only to these fields. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldId>>? includedFields;
  /// Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  final pulumi.Input<String>? rowsLimit;
  /// Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  final pulumi.Input<int>? rowsLimitPercent;
  final pulumi.Input<GooglePrivacyDlpV2BigQueryOptionsSampleMethod>? sampleMethod;
  /// Complete BigQuery table reference.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTable>? tableReference;

  /// Creates a new [GooglePrivacyDlpV2BigQueryOptions].
  /// [excludedFields] References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  /// [identifyingFields] Table fields that may uniquely identify a row within the table. When `actions.saveFindings.outputConfig.table` is specified, the values of columns specified here are available in the output table under `location.content_locations.record_location.record_key.id_values`. Nested fields such as `person.birthdate.year` are allowed.
  /// [includedFields] Limit scanning only to these fields. When inspecting a table, we recommend that you inspect all columns. Otherwise, findings might be affected because hints from excluded columns will not be used.
  /// [rowsLimit] Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  /// [rowsLimitPercent] Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.
  /// [sampleMethod] Optional.
  /// [tableReference] Complete BigQuery table reference.
  const GooglePrivacyDlpV2BigQueryOptions({
    this.excludedFields,
    this.identifyingFields,
    this.includedFields,
    this.rowsLimit,
    this.rowsLimitPercent,
    this.sampleMethod,
    this.tableReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedFields': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2FieldId>, List<Map<String, dynamic>>>(excludedFields, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identifyingFields': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2FieldId>, List<Map<String, dynamic>>>(identifyingFields, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedFields': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2FieldId>, List<Map<String, dynamic>>>(includedFields, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowsLimit': ?rowsLimit,
      'rowsLimitPercent': ?rowsLimitPercent,
      'sampleMethod': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BigQueryOptionsSampleMethod, String>(sampleMethod, (value) => value.wireValue),
      'tableReference': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BigQueryTable, Map<String, dynamic>>(tableReference, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryOptions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryOptions(
      excludedFields: (() { final guardedValue = map['excludedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2FieldId>(guardedValue, (value) => GooglePrivacyDlpV2FieldId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identifyingFields: (() { final guardedValue = map['identifyingFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2FieldId>(guardedValue, (value) => GooglePrivacyDlpV2FieldId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includedFields: (() { final guardedValue = map['includedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2FieldId>(guardedValue, (value) => GooglePrivacyDlpV2FieldId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rowsLimit: (() { final guardedValue = map['rowsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowsLimitPercent: (() { final guardedValue = map['rowsLimitPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sampleMethod: (() { final guardedValue = map['sampleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryOptionsSampleMethod.fromValue(guardedValue as String)); })(),
      tableReference: (() { final guardedValue = map['tableReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

