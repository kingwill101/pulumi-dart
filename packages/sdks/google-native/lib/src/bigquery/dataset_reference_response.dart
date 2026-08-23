// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetReferenceResponse {
  /// [Required] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String> datasetId;
  /// [Optional] The ID of the project containing this dataset.
  final pulumi.Input<String> project;

  /// Creates a new [DatasetReferenceResponse].
  /// [datasetId] [Required] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  /// [project] [Optional] The ID of the project containing this dataset.
  const DatasetReferenceResponse({
    required this.datasetId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': project,
    };
  }

  factory DatasetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return DatasetReferenceResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
