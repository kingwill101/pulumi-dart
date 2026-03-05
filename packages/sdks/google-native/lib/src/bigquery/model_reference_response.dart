// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelReferenceResponse {
  /// The ID of the dataset containing this model.
  final pulumi.Input<String> datasetId;
  /// The ID of the model. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String> modelId;
  /// The ID of the project containing this model.
  final pulumi.Input<String> project;

  /// Creates a new [ModelReferenceResponse].
  /// [datasetId] The ID of the dataset containing this model.
  /// [modelId] The ID of the model. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  /// [project] The ID of the project containing this model.
  ModelReferenceResponse({
    required this.datasetId,
    required this.modelId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'modelId': modelId,
      'project': project,
    };
  }

  factory ModelReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ModelReferenceResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

