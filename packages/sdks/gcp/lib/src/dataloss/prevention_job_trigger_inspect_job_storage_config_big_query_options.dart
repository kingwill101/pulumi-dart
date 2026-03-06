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
  final pulumi.Input<List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField>>? excludedFields;
  /// Specifies the BigQuery fields that will be returned with findings.
  /// If not specified, no identifying fields will be returned for findings.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField>>? identifyingFields;
  /// Limit scanning only to these fields.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField>>? includedFields;
  /// Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted.
  /// If not set, or if set to 0, all rows will be scanned. Only one of rowsLimit and rowsLimitPercent can be
  /// specified. Cannot be used in conjunction with TimespanConfig.
  final pulumi.Input<int>? rowsLimit;
  /// Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.
  /// Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of
  /// rowsLimit and rowsLimitPercent can be specified. Cannot be used in conjunction with TimespanConfig.
  final pulumi.Input<int>? rowsLimitPercent;
  /// How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either
  /// rowsLimit or rowsLimitPercent. If not specified, rows are scanned in the order BigQuery reads them.
  /// If TimespanConfig is set, set this to an empty string to avoid using the default value.
  /// Default value is `TOP`.
  /// Possible values are: `TOP`, `RANDOM_START`.
  final pulumi.Input<String>? sampleMethod;
  /// Set of files to scan.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference> tableReference;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptions].
  /// [excludedFields] References to fields excluded from scanning.
  /// [identifyingFields] Specifies the BigQuery fields that will be returned with findings.
  /// [includedFields] Limit scanning only to these fields.
  /// [rowsLimit] Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted.
  /// [rowsLimitPercent] Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.
  /// [sampleMethod] How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either
  /// [tableReference] Set of files to scan.
  const PreventionJobTriggerInspectJobStorageConfigBigQueryOptions({
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
      'excludedFields': ?pulumi.Input.mapOptionalInputValue<List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField>, List<Map<String, dynamic>>>(excludedFields, (value) => pulumi.Input.encodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identifyingFields': ?pulumi.Input.mapOptionalInputValue<List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField>, List<Map<String, dynamic>>>(identifyingFields, (value) => pulumi.Input.encodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedFields': ?pulumi.Input.mapOptionalInputValue<List<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField>, List<Map<String, dynamic>>>(includedFields, (value) => pulumi.Input.encodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowsLimit': ?rowsLimit,
      'rowsLimitPercent': ?rowsLimitPercent,
      'sampleMethod': ?sampleMethod,
      'tableReference': pulumi.Input.mapInputValue<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference, Map<String, dynamic>>(tableReference, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptions.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptions(
      excludedFields: (() { final guardedValue = map['excludedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField>(guardedValue, (value) => PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identifyingFields: (() { final guardedValue = map['identifyingFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField>(guardedValue, (value) => PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includedFields: (() { final guardedValue = map['includedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField>(guardedValue, (value) => PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rowsLimit: (() { final guardedValue = map['rowsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rowsLimitPercent: (() { final guardedValue = map['rowsLimitPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sampleMethod: (() { final guardedValue = map['sampleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableReference: pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference.fromMap((map['tableReference']! as Map).cast<String, dynamic>())),
    );
  }
}

