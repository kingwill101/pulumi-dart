// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_cluster_iam_policy_args_doc}
/// Arguments for getBareMetalClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_iam_policy_args_doc}
class GetBareMetalClusterIamPolicyArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBareMetalClusterIamPolicyArgs].
  /// [bareMetalClusterId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetBareMetalClusterIamPolicyArgs({
    required pulumi.Output<String> bareMetalClusterId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      bareMetalClusterId = pulumi.Input.asInput<String>(bareMetalClusterId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalClusterId': bareMetalClusterId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetBareMetalClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalClusterIamPolicyArgs(
      bareMetalClusterId: pulumi.Output.create<String>(map['bareMetalClusterId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

