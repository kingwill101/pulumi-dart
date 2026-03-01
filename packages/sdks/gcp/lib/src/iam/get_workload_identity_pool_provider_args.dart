// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_workload_identity_pool_provider_get_workload_identity_pool_provider_args_doc}
/// Arguments for getWorkloadIdentityPoolProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_get_workload_identity_pool_provider_get_workload_identity_pool_provider_args_doc}
class GetWorkloadIdentityPoolProviderArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
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
  GetWorkloadIdentityPoolProviderArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> workloadIdentityPoolId,
    required pulumi.Output<String> workloadIdentityPoolProviderId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      workloadIdentityPoolId = pulumi.Input.asInput<String>(workloadIdentityPoolId),
      workloadIdentityPoolProviderId = pulumi.Input.asInput<String>(workloadIdentityPoolProviderId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolProviderId': workloadIdentityPoolProviderId,
    };
  }

  factory GetWorkloadIdentityPoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workloadIdentityPoolId: pulumi.Output.create<String>(map['workloadIdentityPoolId'] as String),
      workloadIdentityPoolProviderId: pulumi.Output.create<String>(map['workloadIdentityPoolProviderId'] as String),
    );
  }
}

