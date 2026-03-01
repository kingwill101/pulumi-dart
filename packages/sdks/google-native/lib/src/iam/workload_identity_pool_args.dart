// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_workload_identity_pool_args_doc}
/// The set of arguments for WorkloadIdentityPool.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_workload_identity_pool_args_doc}
class WorkloadIdentityPoolArgs {
  /// A description of the pool. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final pulumi.Input<bool>? disabled;
  /// A display name for the pool. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Required. The ID to use for the pool, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [WorkloadIdentityPoolArgs].
  /// [description] A description of the pool. Cannot exceed 256 characters.
  /// [disabled] Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  /// [displayName] A display name for the pool. Cannot exceed 32 characters.
  /// [location] Optional.
  /// [project] Optional.
  /// [workloadIdentityPoolId] Required. The ID to use for the pool, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  WorkloadIdentityPoolArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workloadIdentityPoolId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      workloadIdentityPoolId = pulumi.Input.asInput<String>(workloadIdentityPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'location': ?location,
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory WorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workloadIdentityPoolId: pulumi.Output.create<String>(map['workloadIdentityPoolId'] as String),
    );
  }
}

