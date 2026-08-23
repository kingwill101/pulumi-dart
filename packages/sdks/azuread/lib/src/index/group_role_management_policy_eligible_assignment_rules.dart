// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupRoleManagementPolicyEligibleAssignmentRules {
  /// Must an assignment have an expiry date. `false` allows permanent assignment.
  final pulumi.Input<bool>? expirationRequired;
  /// The maximum length of time an assignment can be valid, as an ISO8601 duration. Permitted values: `P15D`, `P30D`, `P90D`, `P180D`, or `P365D`.
  ///
  /// One of `expirationRequired` or `expireAfter` must be provided.
  final pulumi.Input<String>? expireAfter;

  /// Creates a new [GroupRoleManagementPolicyEligibleAssignmentRules].
  /// [expirationRequired] Must an assignment have an expiry date. `false` allows permanent assignment.
  /// [expireAfter] The maximum length of time an assignment can be valid, as an ISO8601 duration. Permitted values: `P15D`, `P30D`, `P90D`, `P180D`, or `P365D`.
  const GroupRoleManagementPolicyEligibleAssignmentRules({
    this.expirationRequired,
    this.expireAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationRequired': ?expirationRequired,
      'expireAfter': ?expireAfter,
    };
  }

  factory GroupRoleManagementPolicyEligibleAssignmentRules.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyEligibleAssignmentRules(
      expirationRequired: (() { final guardedValue = map['expirationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expireAfter: (() { final guardedValue = map['expireAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
