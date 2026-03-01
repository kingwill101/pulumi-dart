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
  GetSecurityPolicyComputeBetaArgs({
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

  factory GetSecurityPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      securityPolicy: pulumi.Output.create<String>(map['securityPolicy'] as String),
    );
  }
}

