// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_storage_config_big_query_options_excluded_field.dart';
import 'prevention_job_trigger_inspect_job_storage_config_big_query_options_identifying_field.dart';
import 'prevention_job_trigger_inspect_job_storage_config_big_query_options_included_field.dart';
import 'prevention_job_trigger_inspect_job_storage_config_big_query_options_table_reference.dart';

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptions {
  /// References to fields excluded from scanning.
  /// This allows you to skip inspection of entire columns which you know have no findings.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField>? excludedFields;
  /// Specifies the BigQuery fields that will be returned with findings.
  /// If not specified, no identifying fields will be returned for findings.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField>? identifyingFields;
  /// Limit scanning only to these fields.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField>? includedFields;
  /// Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted.
  /// If not set, or if set to 0, all rows will be scanned. Only one of rowsLimit and rowsLimitPercent can be
  /// specified. Cannot be used in conjunction with TimespanConfig.
  final int? rowsLimit;
  /// Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.
  /// Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of
  /// rowsLimit and rowsLimitPercent can be specified. Cannot be used in conjunction with TimespanConfig.
  final int? rowsLimitPercent;
  /// How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either
  /// rowsLimit or rowsLimitPercent. If not specified, rows are scanned in the order BigQuery reads them.
  /// If TimespanConfig is set, set this to an empty string to avoid using the default value.
  /// Default value is `TOP`.
  /// Possible values are: `TOP`, `RANDOM_START`.
  final String? sampleMethod;
  /// Set of files to scan.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference tableReference;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptions].
  /// [excludedFields] References to fields excluded from scanning.
  /// [identifyingFields] Specifies the BigQuery fields that will be returned with findings.
  /// [includedFields] Limit scanning only to these fields.
  /// [rowsLimit] Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted.
  /// [rowsLimitPercent] Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.
  /// [sampleMethod] How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either
  /// [tableReference] Set of files to scan.
  PreventionJobTriggerInspectJobStorageConfigBigQueryOptions({
    this.excludedFields,
    this.identifyingFields,
    this.includedFields,
    this.rowsLimit,
    this.rowsLimitPercent,
    this.sampleMethod,
    required this.tableReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedFields': ?excludedFields == null ? null : pulumi.Input.encodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField, Map<String, dynamic>>(excludedFields!, (value) => value.toMap()),
      'identifyingFields': ?identifyingFields == null ? null : pulumi.Input.encodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField, Map<String, dynamic>>(identifyingFields!, (value) => value.toMap()),
      'includedFields': ?includedFields == null ? null : pulumi.Input.encodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField, Map<String, dynamic>>(includedFields!, (value) => value.toMap()),
      'rowsLimit': ?rowsLimit,
      'rowsLimitPercent': ?rowsLimitPercent,
      'sampleMethod': ?sampleMethod,
      'tableReference': tableReference.toMap(),
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptions.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptions(
      excludedFields: map['excludedFields'] == null ? null : pulumi.Input.decodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField>(map['excludedFields'], (value) => PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField.fromMap((value as Map).cast<String, dynamic>())),
      identifyingFields: map['identifyingFields'] == null ? null : pulumi.Input.decodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField>(map['identifyingFields'], (value) => PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField.fromMap((value as Map).cast<String, dynamic>())),
      includedFields: map['includedFields'] == null ? null : pulumi.Input.decodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField>(map['includedFields'], (value) => PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField.fromMap((value as Map).cast<String, dynamic>())),
      rowsLimit: map['rowsLimit'] == null ? null : map['rowsLimit'] as int,
      rowsLimitPercent: map['rowsLimitPercent'] == null ? null : map['rowsLimitPercent'] as int,
      sampleMethod: map['sampleMethod'] == null ? null : map['sampleMethod'] as String,
      tableReference: PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference.fromMap((map['tableReference'] as Map).cast<String, dynamic>()),
    );
  }
}

