// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobExtractSourceModel {
  /// The ID of the dataset containing this model.
  final pulumi.Input<String> datasetId;
  /// The ID of the model.
  final pulumi.Input<String> modelId;
  /// The ID of the project containing this model.
  final pulumi.Input<String> projectId;

  /// Creates a new [JobExtractSourceModel].
  /// [datasetId] The ID of the dataset containing this model.
  /// [modelId] The ID of the model.
  /// [projectId] The ID of the project containing this model.
  const JobExtractSourceModel({
    required this.datasetId,
    required this.modelId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'modelId': modelId,
      'projectId': projectId,
    };
  }

  factory JobExtractSourceModel.fromMap(Map<String, dynamic> map) {
    return JobExtractSourceModel(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
