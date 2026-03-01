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
    pulumi.Output<String>? api,
    pulumi.Output<List<String>>? basepaths,
    pulumi.Output<String>? deployStartTime,
    pulumi.Output<String>? environment,
    pulumi.Output<String>? orgId,
    pulumi.Output<bool>? override,
    pulumi.Output<int>? revision,
    pulumi.Output<bool>? sequencedRollout,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? state,
  }) :
      api = pulumi.Input.asOptionalInput<String>(api),
      basepaths = pulumi.Input.asOptionalInput<List<String>>(basepaths),
      deployStartTime = pulumi.Input.asOptionalInput<String>(deployStartTime),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      override = pulumi.Input.asOptionalInput<bool>(override),
      revision = pulumi.Input.asOptionalInput<int>(revision),
      sequencedRollout = pulumi.Input.asOptionalInput<bool>(sequencedRollout),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      api: map['api'] == null ? null : pulumi.Output.create<String>(map['api'] as String),
      basepaths: map['basepaths'] == null ? null : pulumi.Output.create<List<String>>((map['basepaths'] as List).cast<String>()),
      deployStartTime: map['deployStartTime'] == null ? null : pulumi.Output.create<String>(map['deployStartTime'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      override: map['override'] == null ? null : pulumi.Output.create<bool>(map['override'] as bool),
      revision: map['revision'] == null ? null : pulumi.Output.create<int>(map['revision'] as int),
      sequencedRollout: map['sequencedRollout'] == null ? null : pulumi.Output.create<bool>(map['sequencedRollout'] as bool),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

