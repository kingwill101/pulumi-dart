// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
class ModelDefinitionModelOptionsResponse {
  final pulumi.Input<List<String>> labels;
  final pulumi.Input<String> lossType;
  final pulumi.Input<String> modelType;

  /// Creates a new [ModelDefinitionModelOptionsResponse].
  /// [labels] Required.
  /// [lossType] Required.
  /// [modelType] Required.
  const ModelDefinitionModelOptionsResponse({
    required this.labels,
    required this.lossType,
    required this.modelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'lossType': lossType,
      'modelType': modelType,
    };
  }

  factory ModelDefinitionModelOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ModelDefinitionModelOptionsResponse(
      labels: pulumi.Input.fromValue((map['labels'] as List).cast<String>()),
      lossType: pulumi.Input.fromValue(map['lossType'] as String),
      modelType: pulumi.Input.fromValue(map['modelType'] as String),
    );
  }
}
