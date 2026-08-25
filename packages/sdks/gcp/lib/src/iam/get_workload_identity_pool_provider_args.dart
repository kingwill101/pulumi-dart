// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_workload_identity_pool_provider_get_workload_identity_pool_provider_args_doc}
/// Arguments for getWorkloadIdentityPoolProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_get_workload_identity_pool_provider_get_workload_identity_pool_provider_args_doc}
class GetWorkloadIdentityPoolProviderArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The id of the pool which is the
  /// final component of the pool resource name.
  final pulumi.Input<String> workloadIdentityPoolId;
  /// The id of the provider which is the
  /// final component of the resource name.
  ///
  /// - - -
  final pulumi.Input<String> workloadIdentityPoolProviderId;

  /// Creates a new [GetWorkloadIdentityPoolProviderArgs].
  /// [project] The project in which the resource belongs. If it
  /// [workloadIdentityPoolId] The id of the pool which is the
  /// [workloadIdentityPoolProviderId] The id of the provider which is the
  const GetWorkloadIdentityPoolProviderArgs({
    this.project,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolProviderId': workloadIdentityPoolProviderId,
    };
  }

  factory GetWorkloadIdentityPoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityPoolId: pulumi.Input.fromValue(map['workloadIdentityPoolId'] as String),
      workloadIdentityPoolProviderId: pulumi.Input.fromValue(map['workloadIdentityPoolProviderId'] as String),
    );
  }
}
