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
    this.project,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetSecurityPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyComputeV1Args(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      securityPolicy: (map['securityPolicy'] as String).input(),
    );
  }
}

