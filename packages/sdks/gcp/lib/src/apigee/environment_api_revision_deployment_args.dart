// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_api_revision_deployment_environment_api_revision_deployment_args_doc}
/// The set of arguments for EnvironmentApiRevisionDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_api_revision_deployment_environment_api_revision_deployment_args_doc}
class EnvironmentApiRevisionDeploymentArgs {
  /// Apigee API proxy name.
  final pulumi.Input<String> api;
  /// Apigee environment name.
  final pulumi.Input<String> environment;
  /// Apigee organization ID.
  final pulumi.Input<String> orgId;
  /// If true, replaces other deployed revisions of this proxy in the environment.
  final pulumi.Input<bool>? override;
  /// API proxy revision number to deploy.
  final pulumi.Input<int> revision;
  /// If true, enables sequenced rollout for safe traffic switching.
  final pulumi.Input<bool>? sequencedRollout;
  /// Optional service account the deployed proxy runs as.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [EnvironmentApiRevisionDeploymentArgs].
  /// [api] Apigee API proxy name.
  /// [environment] Apigee environment name.
  /// [orgId] Apigee organization ID.
  /// [override] If true, replaces other deployed revisions of this proxy in the environment.
  /// [revision] API proxy revision number to deploy.
  /// [sequencedRollout] If true, enables sequenced rollout for safe traffic switching.
  /// [serviceAccount] Optional service account the deployed proxy runs as.
  EnvironmentApiRevisionDeploymentArgs({
    required this.api,
    required this.environment,
    required this.orgId,
    this.override,
    required this.revision,
    this.sequencedRollout,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': api,
      'environment': environment,
      'orgId': orgId,
      'override': ?override,
      'revision': revision,
      'sequencedRollout': ?sequencedRollout,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory EnvironmentApiRevisionDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentApiRevisionDeploymentArgs(
      api: pulumi.Input.fromValue(map['api'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      override: (() { final guardedValue = map['override']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      revision: pulumi.Input.fromValue(map['revision'] as int),
      sequencedRollout: (() { final guardedValue = map['sequencedRollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

