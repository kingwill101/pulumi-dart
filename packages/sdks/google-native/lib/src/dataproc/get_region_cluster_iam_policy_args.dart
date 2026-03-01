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
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> regionId,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      project = pulumi.Input.asOptionalInput<String>(project),
      regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionClusterIamPolicyArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      regionId: pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

