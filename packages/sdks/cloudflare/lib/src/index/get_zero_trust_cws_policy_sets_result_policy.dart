// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsPolicySetsResultPolicy {
  /// Whether this policy should enforce when it matches. False keeps the policy attached for non-enforcing evaluation.
  final pulumi.Input<bool> enforce;
  /// ID of the member policy
  final pulumi.Input<String> policyId;

  /// Creates a new [GetZeroTrustCwsPolicySetsResultPolicy].
  /// [enforce] Whether this policy should enforce when it matches. False keeps the policy attached for non-enforcing evaluation.
  /// [policyId] ID of the member policy
  const GetZeroTrustCwsPolicySetsResultPolicy({
    required this.enforce,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforce': enforce,
      'policyId': policyId,
    };
  }

  factory GetZeroTrustCwsPolicySetsResultPolicy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicySetsResultPolicy(
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
