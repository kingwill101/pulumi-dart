// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_cluster_iam_policy_get_cluster_iam_policy_args_doc}
/// Arguments for getClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_cluster_iam_policy_get_cluster_iam_policy_args_doc}
class GetClusterIamPolicyArgs {
  /// The name or relative resource id of the cluster to manage IAM policies for.
  final pulumi.Input<String> cluster;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  /// Creates a new [GetClusterIamPolicyArgs].
  /// [cluster] The name or relative resource id of the cluster to manage IAM policies for.
  /// [project] Optional.
  /// [region] Optional.
  GetClusterIamPolicyArgs({required this.cluster, this.project, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterIamPolicyArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
