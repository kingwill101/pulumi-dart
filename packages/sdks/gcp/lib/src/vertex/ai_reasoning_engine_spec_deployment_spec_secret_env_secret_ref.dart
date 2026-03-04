// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef {
  /// The name of the secret in Cloud Secret Manager.
  /// Format: {secret_name}.
  final pulumi.Input<String> secret;

  /// The Cloud Secret Manager secret version. Can be 'latest'
  /// for the latest version, an integer for a specific
  /// version, or a version alias.
  final pulumi.Input<String>? version;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef].
  /// [secret] The name of the secret in Cloud Secret Manager.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest'
  AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef({
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secret': secret, 'version': ?version};
  }

  factory AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef(
      secret: pulumi.Input.fromValue(map['secret'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
