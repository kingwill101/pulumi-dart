// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCwsPolicySetPolicy {
  /// Whether this policy should enforce when it matches. Defaults to true; false keeps the policy attached for non-enforcing evaluation.
  final pulumi.Input<bool?>? enforce;
  /// ID of the member policy
  final pulumi.Input<String> policyId;

  /// Creates a new [ZeroTrustCwsPolicySetPolicy].
  /// [enforce] Whether this policy should enforce when it matches. Defaults to true; false keeps the policy attached for non-enforcing evaluation.
  /// [policyId] ID of the member policy
  const ZeroTrustCwsPolicySetPolicy({
    this.enforce,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforce': ?enforce,
      'policyId': policyId,
    };
  }

  factory ZeroTrustCwsPolicySetPolicy.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsPolicySetPolicy(
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
