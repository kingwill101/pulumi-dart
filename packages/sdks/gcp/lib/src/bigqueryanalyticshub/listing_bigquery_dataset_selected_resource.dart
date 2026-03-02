// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingBigqueryDatasetSelectedResource {
  /// Format: For routine: projects/{projectId}/datasets/{datasetId}/routines/{routineId} Example:"projects/test_project/datasets/test_dataset/routines/test_routine"
  ///
  /// <a name="nested_bigquery_dataset_effective_replicas"></a>The `effective_replicas` block contains:
  final pulumi.Input<String>? routine;
  /// Format: For table: projects/{projectId}/datasets/{datasetId}/tables/{tableId} Example:"projects/test_project/datasets/test_dataset/tables/test_table"
  final pulumi.Input<String>? table;

  /// Creates a new [ListingBigqueryDatasetSelectedResource].
  /// [routine] Format: For routine: projects/{projectId}/datasets/{datasetId}/routines/{routineId} Example:"projects/test_project/datasets/test_dataset/routines/test_routine"
  /// [table] Format: For table: projects/{projectId}/datasets/{datasetId}/tables/{tableId} Example:"projects/test_project/datasets/test_dataset/tables/test_table"
  ListingBigqueryDatasetSelectedResource({
    this.routine,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routine': ?routine,
      'table': ?table,
    };
  }

  factory ListingBigqueryDatasetSelectedResource.fromMap(Map<String, dynamic> map) {
    return ListingBigqueryDatasetSelectedResource(
      routine: map['routine'] == null ? null : (map['routine'] as String).input(),
      table: map['table'] == null ? null : (map['table'] as String).input(),
    );
  }
}

