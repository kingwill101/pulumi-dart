// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_cluster_iam_policy_args_doc}
/// Arguments for getRegionClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_cluster_iam_policy_args_doc}
class GetRegionClusterIamPolicyArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionClusterIamPolicyArgs].
  /// [clusterId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionClusterIamPolicyArgs({
    required this.clusterId,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionClusterIamPolicyArgs(
      clusterId: (map['clusterId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

