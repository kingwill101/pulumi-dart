// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_private_cloud_cluster_iam_policy_args_doc}
/// Arguments for getPrivateCloudClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_private_cloud_cluster_iam_policy_args_doc}
class GetPrivateCloudClusterIamPolicyArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateCloudClusterIamPolicyArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetPrivateCloudClusterIamPolicyArgs({
    required this.clusterId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetPrivateCloudClusterIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrivateCloudClusterIamPolicyArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
