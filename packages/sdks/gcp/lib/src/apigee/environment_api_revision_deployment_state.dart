// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentApiRevisionDeployment resources.
class EnvironmentApiRevisionDeploymentState {
  /// Apigee API proxy name.
  final pulumi.Input<String>? api;
  /// Basepaths associated with the deployed proxy.
  final pulumi.Input<List<String>>? basepaths;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// RFC3339 timestamp when deployment started.
  final pulumi.Input<String>? deployStartTime;
  /// Apigee environment name.
  final pulumi.Input<String>? environment;
  /// Apigee organization ID.
  final pulumi.Input<String>? orgId;
  /// If true, replaces other deployed revisions of this proxy in the environment.
  final pulumi.Input<bool>? override;
  /// API proxy revision number to deploy.
  final pulumi.Input<int>? revision;
  /// If true, enables sequenced rollout for safe traffic switching.
  final pulumi.Input<bool>? sequencedRollout;
  /// Optional service account the deployed proxy runs as.
  final pulumi.Input<String>? serviceAccount;
  /// Deployment state reported by Apigee.
  final pulumi.Input<String>? state;

  /// Creates a new [EnvironmentApiRevisionDeploymentState].
  /// [api] Apigee API proxy name.
  /// [basepaths] Basepaths associated with the deployed proxy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deployStartTime] RFC3339 timestamp when deployment started.
  /// [environment] Apigee environment name.
  /// [orgId] Apigee organization ID.
  /// [override] If true, replaces other deployed revisions of this proxy in the environment.
  /// [revision] API proxy revision number to deploy.
  /// [sequencedRollout] If true, enables sequenced rollout for safe traffic switching.
  /// [serviceAccount] Optional service account the deployed proxy runs as.
  /// [state] Deployment state reported by Apigee.
  const EnvironmentApiRevisionDeploymentState({
    this.api,
    this.basepaths,
    this.deletionPolicy,
    this.deployStartTime,
    this.environment,
    this.orgId,
    this.override,
    this.revision,
    this.sequencedRollout,
    this.serviceAccount,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?api,
      'basepaths': ?basepaths,
      'deletionPolicy': ?deletionPolicy,
      'deployStartTime': ?deployStartTime,
      'environment': ?environment,
      'orgId': ?orgId,
      'override': ?override,
      'revision': ?revision,
      'sequencedRollout': ?sequencedRollout,
      'serviceAccount': ?serviceAccount,
      'state': ?state,
    };
  }

  factory EnvironmentApiRevisionDeploymentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentApiRevisionDeploymentState(
      api: (() { final guardedValue = map['api']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      basepaths: (() { final guardedValue = map['basepaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployStartTime: (() { final guardedValue = map['deployStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      override: (() { final guardedValue = map['override']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sequencedRollout: (() { final guardedValue = map['sequencedRollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
