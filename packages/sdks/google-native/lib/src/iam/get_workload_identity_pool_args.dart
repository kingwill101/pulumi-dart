// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_workload_identity_pool_args_doc}
/// Arguments for getWorkloadIdentityPool.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_workload_identity_pool_args_doc}
class GetWorkloadIdentityPoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [GetWorkloadIdentityPoolArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workloadIdentityPoolId] Required.
  GetWorkloadIdentityPoolArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workloadIdentityPoolId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      workloadIdentityPoolId = pulumi.Input.asInput<String>(workloadIdentityPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GetWorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workloadIdentityPoolId: pulumi.Output.create<String>(map['workloadIdentityPoolId'] as String),
    );
  }
}

