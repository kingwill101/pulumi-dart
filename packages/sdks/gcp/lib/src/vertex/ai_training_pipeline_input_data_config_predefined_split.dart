// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineInputDataConfigPredefinedSplit {
  /// The key is a name of one of the Dataset's data columns.
  final pulumi.Input<String> key;

  /// Creates a new [AiTrainingPipelineInputDataConfigPredefinedSplit].
  /// [key] The key is a name of one of the Dataset's data columns.
  const AiTrainingPipelineInputDataConfigPredefinedSplit({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory AiTrainingPipelineInputDataConfigPredefinedSplit.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineInputDataConfigPredefinedSplit(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
