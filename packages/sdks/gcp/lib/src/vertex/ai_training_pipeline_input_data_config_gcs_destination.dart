// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineInputDataConfigGcsDestination {
  /// The Cloud Storage URI prefix to write to.
  final pulumi.Input<String> outputUriPrefix;

  /// Creates a new [AiTrainingPipelineInputDataConfigGcsDestination].
  /// [outputUriPrefix] The Cloud Storage URI prefix to write to.
  const AiTrainingPipelineInputDataConfigGcsDestination({
    required this.outputUriPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputUriPrefix': outputUriPrefix,
    };
  }

  factory AiTrainingPipelineInputDataConfigGcsDestination.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineInputDataConfigGcsDestination(
      outputUriPrefix: pulumi.Input.fromValue(map['outputUriPrefix'] as String),
    );
  }
}
