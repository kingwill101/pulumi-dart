// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec_secret_env_secret_ref.dart';

class AiReasoningEngineSpecDeploymentSpecSecretEnv {
  /// The name of the environment variable. Must be a valid C
  /// identifier.
  final pulumi.Input<String> name;
  /// Reference to a secret stored in the Cloud Secret Manager
  /// that will provide the value for this environment variable.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef> secretRef;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecSecretEnv].
  /// [name] The name of the environment variable. Must be a valid C
  /// [secretRef] Reference to a secret stored in the Cloud Secret Manager
  AiReasoningEngineSpecDeploymentSpecSecretEnv({
    required this.name,
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secretRef': pulumi.Input.mapInputValue<AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpecDeploymentSpecSecretEnv.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecSecretEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      secretRef: pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef.fromMap((map['secretRef']! as Map).cast<String, dynamic>())),
    );
  }
}

