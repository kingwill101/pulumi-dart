// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment external input definition for parameterization.
class DeploymentExternalInputDefinition {
  /// Configuration for the external input.
  final pulumi.Input<dynamic>? config;
  /// The kind of external input.
  final pulumi.Input<String> kind;

  /// Creates a new [DeploymentExternalInputDefinition].
  /// [config] Configuration for the external input.
  /// [kind] The kind of external input.
  DeploymentExternalInputDefinition({
    this.config,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'kind': kind,
    };
  }

  factory DeploymentExternalInputDefinition.fromMap(Map<String, dynamic> map) {
    return DeploymentExternalInputDefinition(
      config: map['config'] == null ? null : (map['config']).input(),
      kind: (map['kind'] as String).input(),
    );
  }
}

