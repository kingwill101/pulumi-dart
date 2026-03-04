// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_security_policy_args_doc}
/// Arguments for getRegionSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_security_policy_args_doc}
class GetRegionSecurityPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetRegionSecurityPolicyArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [securityPolicy] Required.
  GetRegionSecurityPolicyArgs({
    this.project,
    required this.region,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetRegionSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
    );
  }
}
