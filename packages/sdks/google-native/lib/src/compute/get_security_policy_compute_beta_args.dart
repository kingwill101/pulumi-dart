// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_security_policy_compute_beta_args_doc}
/// Arguments for getSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_security_policy_compute_beta_args_doc}
class GetSecurityPolicyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetSecurityPolicyComputeBetaArgs].
  /// [project] Optional.
  /// [securityPolicy] Required.
  const GetSecurityPolicyComputeBetaArgs({
    this.project,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetSecurityPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
    );
  }
}

