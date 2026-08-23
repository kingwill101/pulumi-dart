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
  /// One of `expirationRequired` or `expireAfter` must be provided.
  final pulumi.Input<bool>? requireTicketInfo;

  /// Creates a new [GroupRoleManagementPolicyActiveAssignmentRules].
  /// [expirationRequired] Must an assignment have an expiry date. `false` allows permanent assignment.
  /// [expireAfter] The maximum length of time an assignment can be valid, as an ISO8601 duration. Permitted values: `P15D`, `P30D`, `P90D`, `P180D`, or `P365D`.
  /// [requireJustification] Is a justification required to create new assignments.
  /// [requireMultifactorAuthentication] Is multi-factor authentication required to create new assignments.
  /// [requireTicketInfo] Is ticket information required to create new assignments.
  const GroupRoleManagementPolicyActiveAssignmentRules({
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
      expirationRequired: (() { final guardedValue = map['expirationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expireAfter: (() { final guardedValue = map['expireAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireJustification: (() { final guardedValue = map['requireJustification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireMultifactorAuthentication: (() { final guardedValue = map['requireMultifactorAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireTicketInfo: (() { final guardedValue = map['requireTicketInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
