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
    required this.location,
    this.project,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GetWorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workloadIdentityPoolId: pulumi.Input.fromValue(
        map['workloadIdentityPoolId'] as String,
      ),
    );
  }
}
