// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_action_save_findings_output_config_storage_path.dart';
import 'prevention_job_trigger_inspect_job_action_save_findings_output_config_table.dart';

class PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig {
  /// Schema used for writing the findings for Inspect jobs. This field is only used for
  /// Inspect and must be unspecified for Risk jobs. Columns are derived from the Finding
  /// object. If appending to an existing table, any columns from the predefined schema
  /// that are missing will be added. No columns in the existing table will be deleted.
  /// If unspecified, then all available columns will be used for a new table or an (existing)
  /// table with no schema, and no changes will be made to an existing table that has a schema.
  /// Only for use with external storage.
  /// Possible values are: `BASIC_COLUMNS`, `GCS_COLUMNS`, `DATASTORE_COLUMNS`, `BIG_QUERY_COLUMNS`, `ALL_COLUMNS`.
  final pulumi.Input<String>? outputSchema;
  /// Store findings in an existing Cloud Storage bucket. Files will be generated with the job ID and file part number
  /// as the filename, and will contain findings in textproto format as SaveToGcsFindingsOutput. The file name will use
  /// the naming convention &lt;job_id&gt;-&lt;shard_number&gt;, for example: my-job-id-2.
  /// Supported for InspectJobs. The bucket must not be the same as the bucket being inspected. If storing findings to
  /// Cloud Storage, the output schema field should not be set. If set, it will be ignored.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath>? storagePath;
  /// Information on the location of the target BigQuery Table.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable>? table;

  /// Creates a new [PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig].
  /// [outputSchema] Schema used for writing the findings for Inspect jobs. This field is only used for
  /// [storagePath] Store findings in an existing Cloud Storage bucket. Files will be generated with the job ID and file part number
  /// [table] Information on the location of the target BigQuery Table.
  const PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig({
    this.outputSchema,
    this.storagePath,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputSchema': ?outputSchema,
      'storagePath': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath, Map<String, dynamic>>(storagePath, (value) => value.toMap()),
      'table': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig(
      outputSchema: (() { final guardedValue = map['outputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePath: (() { final guardedValue = map['storagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
