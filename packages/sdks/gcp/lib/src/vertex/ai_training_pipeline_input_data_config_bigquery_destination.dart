// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineInputDataConfigBigqueryDestination {
  /// The BigQuery table to which the output is to be written.
  final pulumi.Input<String> outputUri;

  /// Creates a new [AiTrainingPipelineInputDataConfigBigqueryDestination].
  /// [outputUri] The BigQuery table to which the output is to be written.
  const AiTrainingPipelineInputDataConfigBigqueryDestination({
    required this.outputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputUri': outputUri,
    };
  }

  factory AiTrainingPipelineInputDataConfigBigqueryDestination.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineInputDataConfigBigqueryDestination(
      outputUri: pulumi.Input.fromValue(map['outputUri'] as String),
    );
  }
}
