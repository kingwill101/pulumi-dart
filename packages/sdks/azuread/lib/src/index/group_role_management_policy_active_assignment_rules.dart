// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupRoleManagementPolicyActiveAssignmentRules {
  /// Must an assignment have an expiry date. `false` allows permanent assignment.
  final pulumi.Input<bool>? expirationRequired;
  /// The maximum length of time an assignment can be valid, as an ISO8601 duration. Permitted values: `P15D`, `P30D`, `P90D`, `P180D`, or `P365D`.
  final pulumi.Input<String>? expireAfter;
  /// Is a justification required to create new assignments.
  final pulumi.Input<bool>? requireJustification;
  /// Is multi-factor authentication required to create new assignments.
  final pulumi.Input<bool>? requireMultifactorAuthentication;
  /// Is ticket information required to create new assignments.
  ///
  /// One of `expiration_required` or `expire_after` must be provided.
  final pulumi.Input<bool>? requireTicketInfo;

  /// Creates a new [GroupRoleManagementPolicyActiveAssignmentRules].
  /// [expirationRequired] Must an assignment have an expiry date. `false` allows permanent assignment.
  /// [expireAfter] The maximum length of time an assignment can be valid, as an ISO8601 duration. Permitted values: `P15D`, `P30D`, `P90D`, `P180D`, or `P365D`.
  /// [requireJustification] Is a justification required to create new assignments.
  /// [requireMultifactorAuthentication] Is multi-factor authentication required to create new assignments.
  /// [requireTicketInfo] Is ticket information required to create new assignments.
  GroupRoleManagementPolicyActiveAssignmentRules({
    this.expirationRequired,
    this.expireAfter,
    this.requireJustification,
    this.requireMultifactorAuthentication,
    this.requireTicketInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationRequired': ?expirationRequired,
      'expireAfter': ?expireAfter,
      'requireJustification': ?requireJustification,
      'requireMultifactorAuthentication': ?requireMultifactorAuthentication,
      'requireTicketInfo': ?requireTicketInfo,
    };
  }

  factory GroupRoleManagementPolicyActiveAssignmentRules.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyActiveAssignmentRules(
      expirationRequired: map['expirationRequired'] == null ? null : (map['expirationRequired'] as bool).input(),
      expireAfter: map['expireAfter'] == null ? null : (map['expireAfter'] as String).input(),
      requireJustification: map['requireJustification'] == null ? null : (map['requireJustification'] as bool).input(),
      requireMultifactorAuthentication: map['requireMultifactorAuthentication'] == null ? null : (map['requireMultifactorAuthentication'] as bool).input(),
      requireTicketInfo: map['requireTicketInfo'] == null ? null : (map['requireTicketInfo'] as bool).input(),
    );
  }
}

