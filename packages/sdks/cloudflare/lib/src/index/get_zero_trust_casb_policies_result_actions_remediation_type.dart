// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbPoliciesResultActionsRemediationType {
  /// Display name/label of the remediation type.
  final pulumi.Input<String> displayName;
  /// The system name of the remediation type.
  final pulumi.Input<String> remediationType;
  /// Unique identifier for the remediation type.
  final pulumi.Input<String> remediationTypeId;

  /// Creates a new [GetZeroTrustCasbPoliciesResultActionsRemediationType].
  /// [displayName] Display name/label of the remediation type.
  /// [remediationType] The system name of the remediation type.
  /// [remediationTypeId] Unique identifier for the remediation type.
  const GetZeroTrustCasbPoliciesResultActionsRemediationType({
    required this.displayName,
    required this.remediationType,
    required this.remediationTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'remediationType': remediationType,
      'remediationTypeId': remediationTypeId,
    };
  }

  factory GetZeroTrustCasbPoliciesResultActionsRemediationType.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbPoliciesResultActionsRemediationType(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      remediationType: pulumi.Input.fromValue(map['remediationType'] as String),
      remediationTypeId: pulumi.Input.fromValue(map['remediationTypeId'] as String),
    );
  }
}
