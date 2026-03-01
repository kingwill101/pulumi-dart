// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_action_deidentify_transformation_details_storage_config_table.dart';

class PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig {
  /// The BigQuery table in which to store the output.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigTable table;

  /// Creates a new [PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig].
  /// [table] The BigQuery table in which to store the output.
  PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig({
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'table': table.toMap(),
    };
  }

  factory PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig(
      table: PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigTable.fromMap((map['table'] as Map).cast<String, dynamic>()),
    );
  }
}

