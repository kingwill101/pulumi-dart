// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceBigqueryResource {
  /// Points to a bigquery dataset to use.
  /// Expected Format:
  /// projects/{project_id_or_number}/datasets/{dataset_id}
  final pulumi.Input<String?>? bigqueryDataset;
  /// Points to a bigquery table to use.
  /// Expected Format:
  /// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
  final pulumi.Input<String?>? bigqueryTable;
  /// A map of column names to column descriptions for the bigquery_table.
  ///
  /// &lt;a name="nestedArtifactExamplesResourceF1Resource"&gt;&lt;/a&gt;The `f1Resource` block supports:
  final pulumi.Input<Map<String, String>?>? columnDescriptions;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceBigqueryResource].
  /// [bigqueryDataset] Points to a bigquery dataset to use.
  /// [bigqueryTable] Points to a bigquery table to use.
  /// [columnDescriptions] A map of column names to column descriptions for the bigquery_table.
  const AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceBigqueryResource({
    this.bigqueryDataset,
    this.bigqueryTable,
    this.columnDescriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDataset': ?bigqueryDataset,
      'bigqueryTable': ?bigqueryTable,
      'columnDescriptions': ?columnDescriptions,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceBigqueryResource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceBigqueryResource(
      bigqueryDataset: (() { final guardedValue = map['bigqueryDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bigqueryTable: (() { final guardedValue = map['bigqueryTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      columnDescriptions: (() { final guardedValue = map['columnDescriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
