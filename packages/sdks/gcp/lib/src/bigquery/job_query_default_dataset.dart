// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobQueryDefaultDataset {
  /// The dataset. Can be specified `{{dataset_id}}` if `project_id` is also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}` if not.
  final pulumi.Input<String> datasetId;

  /// The ID of the project containing this table.
  final pulumi.Input<String>? projectId;

  /// Creates a new [JobQueryDefaultDataset].
  /// [datasetId] The dataset. Can be specified `{{dataset_id}}` if `project_id` is also set,
  /// [projectId] The ID of the project containing this table.
  JobQueryDefaultDataset({required this.datasetId, this.projectId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datasetId': datasetId, 'projectId': ?projectId};
  }

  factory JobQueryDefaultDataset.fromMap(Map<String, dynamic> map) {
    return JobQueryDefaultDataset(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
