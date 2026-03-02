// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentApiRevisionDeployment resources.
class EnvironmentApiRevisionDeploymentState {
  /// Apigee API proxy name.
  final pulumi.Input<String>? api;
  /// Basepaths associated with the deployed proxy.
  final pulumi.Input<List<String>>? basepaths;
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
  /// [deployStartTime] RFC3339 timestamp when deployment started.
  /// [environment] Apigee environment name.
  /// [orgId] Apigee organization ID.
  /// [override] If true, replaces other deployed revisions of this proxy in the environment.
  /// [revision] API proxy revision number to deploy.
  /// [sequencedRollout] If true, enables sequenced rollout for safe traffic switching.
  /// [serviceAccount] Optional service account the deployed proxy runs as.
  /// [state] Deployment state reported by Apigee.
  EnvironmentApiRevisionDeploymentState({
    this.api,
    this.basepaths,
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
      api: map['api'] == null ? null : (map['api']! as String).input(),
      basepaths: map['basepaths'] == null ? null : ((map['basepaths']! as List).cast<String>()).input(),
      deployStartTime: map['deployStartTime'] == null ? null : (map['deployStartTime']! as String).input(),
      environment: map['environment'] == null ? null : (map['environment']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      override: map['override'] == null ? null : (map['override']! as bool).input(),
      revision: map['revision'] == null ? null : (map['revision']! as int).input(),
      sequencedRollout: map['sequencedRollout'] == null ? null : (map['sequencedRollout']! as bool).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

