// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_resource_policy_compute_v1_args_doc}
/// Arguments for getResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_resource_policy_compute_v1_args_doc}
class GetResourcePolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resourcePolicy;

  /// Creates a new [GetResourcePolicyComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [resourcePolicy] Required.
  const GetResourcePolicyComputeV1Args({
    this.project,
    required this.region,
    required this.resourcePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'resourcePolicy': resourcePolicy,
    };
  }

  factory GetResourcePolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      resourcePolicy: pulumi.Input.fromValue(map['resourcePolicy'] as String),
    );
  }
}
