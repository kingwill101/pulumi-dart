// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecDeploymentSpecEnv {
  /// The name of the environment variable. Must be a valid
  /// C identifier.
  final pulumi.Input<String> name;
  /// Variables that reference a $(VAR_NAME) are expanded using
  /// the previous defined environment variables in the container
  /// and any service environment variables. If a variable cannot
  /// be resolved, the reference in the input string will be
  /// unchanged. The $(VAR_NAME) syntax can be escaped with a
  /// double $$, ie: $$(VAR_NAME). Escaped references will never
  /// be expanded, regardless of whether the variable exists
  /// or not.
  final pulumi.Input<String> value;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecEnv].
  /// [name] The name of the environment variable. Must be a valid
  /// [value] Variables that reference a $(VAR_NAME) are expanded using
  AiReasoningEngineSpecDeploymentSpecEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AiReasoningEngineSpecDeploymentSpecEnv.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

