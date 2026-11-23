// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineModelToUploadContainerSpecEnv {
  /// The name of the environment variable.
  final pulumi.Input<String> name;
  /// The value of the environment variable.
  final pulumi.Input<String> value;

  /// Creates a new [AiTrainingPipelineModelToUploadContainerSpecEnv].
  /// [name] The name of the environment variable.
  /// [value] The value of the environment variable.
  const AiTrainingPipelineModelToUploadContainerSpecEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AiTrainingPipelineModelToUploadContainerSpecEnv.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUploadContainerSpecEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
