// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_security_policy_compute_v1_args_doc}
/// Arguments for getRegionSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_security_policy_compute_v1_args_doc}
class GetRegionSecurityPolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetRegionSecurityPolicyComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [securityPolicy] Required.
  GetRegionSecurityPolicyComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> securityPolicy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      securityPolicy = pulumi.Input.asInput<String>(securityPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetRegionSecurityPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      securityPolicy: pulumi.Output.create<String>(map['securityPolicy'] as String),
    );
  }
}

