// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_api_revision_deployment_environment_api_revision_deployment_args_doc}
/// The set of arguments for EnvironmentApiRevisionDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_api_revision_deployment_environment_api_revision_deployment_args_doc}
class EnvironmentApiRevisionDeploymentArgs {
  /// Apigee API proxy name.
  final pulumi.Input<String> api;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Apigee environment name.
  final pulumi.Input<String> environment;
  /// Apigee organization ID.
  final pulumi.Input<String> orgId;
  /// If true, replaces other deployed revisions of this proxy in the environment.
  final pulumi.Input<bool?>? override;
  /// API proxy revision number to deploy.
  final pulumi.Input<int> revision;
  /// If true, enables sequenced rollout for safe traffic switching.
  final pulumi.Input<bool?>? sequencedRollout;
  /// Optional service account the deployed proxy runs as.
  final pulumi.Input<String?>? serviceAccount;

  /// Creates a new [EnvironmentApiRevisionDeploymentArgs].
  /// [api] Apigee API proxy name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [environment] Apigee environment name.
  /// [orgId] Apigee organization ID.
  /// [override] If true, replaces other deployed revisions of this proxy in the environment.
  /// [revision] API proxy revision number to deploy.
  /// [sequencedRollout] If true, enables sequenced rollout for safe traffic switching.
  /// [serviceAccount] Optional service account the deployed proxy runs as.
  const EnvironmentApiRevisionDeploymentArgs({
    required this.api,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      override: (() { final guardedValue = map['override']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      revision: pulumi.Input.fromValue((map['revision'] as num).toInt()),
      sequencedRollout: (() { final guardedValue = map['sequencedRollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
