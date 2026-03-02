// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetReference {
  /// [Required] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String>? datasetId;
  /// [Optional] The ID of the project containing this dataset.
  final pulumi.Input<String>? project;

  /// Creates a new [DatasetReference].
  /// [datasetId] [Required] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  /// [project] [Optional] The ID of the project containing this dataset.
  DatasetReference({
    this.datasetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'project': ?project,
    };
  }

  factory DatasetReference.fromMap(Map<String, dynamic> map) {
    return DatasetReference(
      datasetId: map['datasetId'] == null ? null : (map['datasetId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

