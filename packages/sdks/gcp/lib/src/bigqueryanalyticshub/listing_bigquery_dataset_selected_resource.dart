// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingBigqueryDatasetSelectedResource {
  /// Format: For routine: projects/{projectId}/datasets/{datasetId}/routines/{routineId} Example:"projects/test_project/datasets/test_dataset/routines/test_routine"
  ///
  /// &lt;a name="nestedBigqueryDatasetEffectiveReplicas"&gt;&lt;/a&gt;The `effectiveReplicas` block contains:
  final pulumi.Input<String>? routine;
  /// Format: For table: projects/{projectId}/datasets/{datasetId}/tables/{tableId} Example:"projects/test_project/datasets/test_dataset/tables/test_table"
  final pulumi.Input<String>? table;

  /// Creates a new [ListingBigqueryDatasetSelectedResource].
  /// [routine] Format: For routine: projects/{projectId}/datasets/{datasetId}/routines/{routineId} Example:"projects/test_project/datasets/test_dataset/routines/test_routine"
  /// [table] Format: For table: projects/{projectId}/datasets/{datasetId}/tables/{tableId} Example:"projects/test_project/datasets/test_dataset/tables/test_table"
  const ListingBigqueryDatasetSelectedResource({
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
      routine: (() { final guardedValue = map['routine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
