// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_security_policy_compute_v1_args_doc}
/// Arguments for getSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_security_policy_compute_v1_args_doc}
class GetSecurityPolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetSecurityPolicyComputeV1Args].
  /// [project] Optional.
  /// [securityPolicy] Required.
  GetSecurityPolicyComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> securityPolicy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      securityPolicy = pulumi.Input.asInput<String>(securityPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetSecurityPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      securityPolicy: pulumi.Output.create<String>(map['securityPolicy'] as String),
    );
  }
}

