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
  GetSubnetworkIamPolicyArgs({
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> subnetwork,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetwork = pulumi.Input.asInput<String>(subnetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
      'subnetwork': subnetwork,
    };
  }

  factory GetSubnetworkIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkIamPolicyArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetwork: pulumi.Output.create<String>(map['subnetwork'] as String),
    );
  }
}

