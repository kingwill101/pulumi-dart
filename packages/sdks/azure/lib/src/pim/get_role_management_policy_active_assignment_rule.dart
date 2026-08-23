// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleManagementPolicyActiveAssignmentRule {
  /// (Boolean) Must an assignment have an expiry date.
  final pulumi.Input<bool> expirationRequired;
  /// (String) The maximum length of time an assignment can be valid, as an ISO8601 duration.
  final pulumi.Input<String> expireAfter;
  /// (Boolean) Is a justification required to create new assignments.
  final pulumi.Input<bool> requireJustification;
  /// (Boolean) Is multi-factor authentication required to create new assignments.
  final pulumi.Input<bool> requireMultifactorAuthentication;
  /// (Boolean) Is ticket information required to create new assignments.
  final pulumi.Input<bool> requireTicketInfo;

  /// Creates a new [GetRoleManagementPolicyActiveAssignmentRule].
  /// [expirationRequired] (Boolean) Must an assignment have an expiry date.
  /// [expireAfter] (String) The maximum length of time an assignment can be valid, as an ISO8601 duration.
  /// [requireJustification] (Boolean) Is a justification required to create new assignments.
  /// [requireMultifactorAuthentication] (Boolean) Is multi-factor authentication required to create new assignments.
  /// [requireTicketInfo] (Boolean) Is ticket information required to create new assignments.
  const GetRoleManagementPolicyActiveAssignmentRule({
    required this.expirationRequired,
    required this.expireAfter,
    required this.requireJustification,
    required this.requireMultifactorAuthentication,
    required this.requireTicketInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationRequired': expirationRequired,
      'expireAfter': expireAfter,
      'requireJustification': requireJustification,
      'requireMultifactorAuthentication': requireMultifactorAuthentication,
      'requireTicketInfo': requireTicketInfo,
    };
  }

  factory GetRoleManagementPolicyActiveAssignmentRule.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyActiveAssignmentRule(
      expirationRequired: pulumi.Input.fromValue(map['expirationRequired'] as bool),
      expireAfter: pulumi.Input.fromValue(map['expireAfter'] as String),
      requireJustification: pulumi.Input.fromValue(map['requireJustification'] as bool),
      requireMultifactorAuthentication: pulumi.Input.fromValue(map['requireMultifactorAuthentication'] as bool),
      requireTicketInfo: pulumi.Input.fromValue(map['requireTicketInfo'] as bool),
    );
  }
}
