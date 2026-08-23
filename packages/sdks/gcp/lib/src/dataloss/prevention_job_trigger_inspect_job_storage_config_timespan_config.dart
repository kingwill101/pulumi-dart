// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_storage_config_timespan_config_timestamp_field.dart';

class PreventionJobTriggerInspectJobStorageConfigTimespanConfig {
  /// When the job is started by a JobTrigger we will automatically figure out a valid startTime to avoid
  /// scanning files that have not been modified since the last time the JobTrigger executed. This will
  /// be based on the time of the execution of the last run of the JobTrigger or the timespan endTime
  /// used in the last run of the JobTrigger.
  final pulumi.Input<bool>? enableAutoPopulationOfTimespanConfig;
  /// Exclude files, tables, or rows newer than this value. If not set, no upper time limit is applied.
  final pulumi.Input<String>? endTime;
  /// Exclude files, tables, or rows older than this value. If not set, no lower time limit is applied.
  final pulumi.Input<String>? startTime;
  /// Specification of the field containing the timestamp of scanned items.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField>? timestampField;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigTimespanConfig].
  /// [enableAutoPopulationOfTimespanConfig] When the job is started by a JobTrigger we will automatically figure out a valid startTime to avoid
  /// [endTime] Exclude files, tables, or rows newer than this value. If not set, no upper time limit is applied.
  /// [startTime] Exclude files, tables, or rows older than this value. If not set, no lower time limit is applied.
  /// [timestampField] Specification of the field containing the timestamp of scanned items.
  const PreventionJobTriggerInspectJobStorageConfigTimespanConfig({
    this.enableAutoPopulationOfTimespanConfig,
    this.endTime,
    this.startTime,
    this.timestampField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutoPopulationOfTimespanConfig': ?enableAutoPopulationOfTimespanConfig,
      'endTime': ?endTime,
      'startTime': ?startTime,
      'timestampField': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField, Map<String, dynamic>>(timestampField, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigTimespanConfig.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigTimespanConfig(
      enableAutoPopulationOfTimespanConfig: (() { final guardedValue = map['enableAutoPopulationOfTimespanConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampField: (() { final guardedValue = map['timestampField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
