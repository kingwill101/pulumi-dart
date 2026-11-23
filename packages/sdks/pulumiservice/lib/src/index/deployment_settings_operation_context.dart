// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_context_oidc.dart';
import 'operation_context_options.dart';

/// Settings related to the Pulumi operation environment during the deployment.
class DeploymentSettingsOperationContext {
  /// Environment variables to set for the deployment.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Deployments OIDC configuration for obtaining cloud credentials during the deployment. Pulumi ESC is the recommended way to supply cloud credentials to Pulumi Deployments. Deployments OIDC still fits when a customer-managed runner can't reach Pulumi Cloud to use ESC, or when pre-run commands need credentials and aren't wrapped in `pulumi env run`. See [Supplying Cloud Credentials to Pulumi Deployments](https://www.pulumi.com/docs/deployments/guides/cloud-credentials/).
  final pulumi.Input<OperationContextOIDC?>? oidc;
  /// Options to override default behavior during the deployment.
  final pulumi.Input<OperationContextOptions?>? options;
  /// Shell commands to run before the Pulumi operation executes.
  final pulumi.Input<List<String>?>? preRunCommands;

  /// Creates a new [DeploymentSettingsOperationContext].
  /// [environmentVariables] Environment variables to set for the deployment.
  /// [oidc] Deployments OIDC configuration for obtaining cloud credentials during the deployment. Pulumi ESC is the recommended way to supply cloud credentials to Pulumi Deployments. Deployments OIDC still fits when a customer-managed runner can't reach Pulumi Cloud to use ESC, or when pre-run commands need credentials and aren't wrapped in `pulumi env run`. See [Supplying Cloud Credentials to Pulumi Deployments](https://www.pulumi.com/docs/deployments/guides/cloud-credentials/).
  /// [options] Options to override default behavior during the deployment.
  /// [preRunCommands] Shell commands to run before the Pulumi operation executes.
  const DeploymentSettingsOperationContext({
    this.environmentVariables,
    this.oidc,
    this.options,
    this.preRunCommands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentVariables': ?environmentVariables,
      'oidc': ?pulumi.Input.mapOptionalInputValue<OperationContextOIDC, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'options': ?pulumi.Input.mapOptionalInputValue<OperationContextOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'preRunCommands': ?preRunCommands,
    };
  }

  factory DeploymentSettingsOperationContext.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsOperationContext(
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OperationContextOIDC.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OperationContextOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preRunCommands: (() { final guardedValue = map['preRunCommands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
