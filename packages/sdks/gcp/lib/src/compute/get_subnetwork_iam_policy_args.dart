// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_subnetwork_iam_policy_get_subnetwork_iam_policy_args_doc}
/// Arguments for getSubnetworkIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_subnetwork_iam_policy_get_subnetwork_iam_policy_args_doc}
class GetSubnetworkIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The GCP region for this subnetwork.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetSubnetworkIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The GCP region for this subnetwork.
  /// [subnetwork] Used to find the parent resource to bind the IAM policy to
  const GetSubnetworkIamPolicyArgs({
    this.project,
    this.region,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
      'subnetwork': subnetwork,
    };
  }

  factory GetSubnetworkIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

