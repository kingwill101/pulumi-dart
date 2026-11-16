// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsPolicySetPolicy {
  /// Whether this policy should enforce when it matches. False keeps the policy attached for non-enforcing evaluation.
  final pulumi.Input<bool> enforce;
  /// ID of the member policy
  final pulumi.Input<String> policyId;

  /// Creates a new [GetZeroTrustCwsPolicySetPolicy].
  /// [enforce] Whether this policy should enforce when it matches. False keeps the policy attached for non-enforcing evaluation.
  /// [policyId] ID of the member policy
  const GetZeroTrustCwsPolicySetPolicy({
    required this.enforce,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforce': enforce,
      'policyId': policyId,
    };
  }

  factory GetZeroTrustCwsPolicySetPolicy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicySetPolicy(
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
