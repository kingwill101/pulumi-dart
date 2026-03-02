// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_security_policy_args_doc}
/// Arguments for getSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_security_policy_args_doc}
class GetSecurityPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetSecurityPolicyArgs].
  /// [project] Optional.
  /// [securityPolicy] Required.
  GetSecurityPolicyArgs({
    this.project,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      securityPolicy: (map['securityPolicy'] as String).input(),
    );
  }
}

