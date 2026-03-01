// ignore_for_file: unused_element, unnecessary_cast

import 'operation_context_oidc.dart';
import 'operation_context_options.dart';

/// Settings related to the Pulumi operation environment during the deployment.
class DeploymentSettingsOperationContext {
  /// Environment variables to set for the deployment.
  final Map<String, String>? environmentVariables;
  /// OIDC configuration to use during the deployment.
  final OperationContextOIDC? oidc;
  /// Options to override default behavior during the deployment.
  final OperationContextOptions? options;
  /// Shell commands to run before the Pulumi operation executes.
  final List<String>? preRunCommands;

  /// Creates a new [DeploymentSettingsOperationContext].
  /// [environmentVariables] Environment variables to set for the deployment.
  /// [oidc] OIDC configuration to use during the deployment.
  /// [options] Options to override default behavior during the deployment.
  /// [preRunCommands] Shell commands to run before the Pulumi operation executes.
  DeploymentSettingsOperationContext({
    this.environmentVariables,
    this.oidc,
    this.options,
    this.preRunCommands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentVariables': ?environmentVariables,
      'oidc': ?oidc == null ? null : oidc!.toMap(),
      'options': ?options == null ? null : options!.toMap(),
      'preRunCommands': ?preRunCommands,
    };
  }

  factory DeploymentSettingsOperationContext.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsOperationContext(
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      oidc: map['oidc'] == null ? null : OperationContextOIDC.fromMap((map['oidc'] as Map).cast<String, dynamic>()),
      options: map['options'] == null ? null : OperationContextOptions.fromMap((map['options'] as Map).cast<String, dynamic>()),
      preRunCommands: map['preRunCommands'] == null ? null : (map['preRunCommands'] as List).cast<String>(),
    );
  }
}

