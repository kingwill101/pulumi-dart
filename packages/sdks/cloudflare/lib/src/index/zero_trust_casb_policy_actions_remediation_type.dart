// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbPolicyActionsRemediationType {
  /// The ID of the remediation type to execute.
  final pulumi.Input<String> remediationTypeId;

  /// Creates a new [ZeroTrustCasbPolicyActionsRemediationType].
  /// [remediationTypeId] The ID of the remediation type to execute.
  const ZeroTrustCasbPolicyActionsRemediationType({
    required this.remediationTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationTypeId': remediationTypeId,
    };
  }

  factory ZeroTrustCasbPolicyActionsRemediationType.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbPolicyActionsRemediationType(
      remediationTypeId: pulumi.Input.fromValue(map['remediationTypeId'] as String),
    );
  }
}
