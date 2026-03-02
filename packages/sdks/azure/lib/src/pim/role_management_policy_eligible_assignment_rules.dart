// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoleManagementPolicyEligibleAssignmentRules {
  /// Must an assignment have an expiry date. `false` allows permanent assignment.
  final pulumi.Input<bool>? expirationRequired;
  /// The maximum length of time an assignment can be valid, as an ISO8601 duration. Permitted values: `P15D`, `P30D`, `P90D`, `P180D`, or `P365D`.
  ///
  /// One of `expiration_required` or `expire_after` must be provided.
  final pulumi.Input<String>? expireAfter;

  /// Creates a new [RoleManagementPolicyEligibleAssignmentRules].
  /// [expirationRequired] Must an assignment have an expiry date. `false` allows permanent assignment.
  /// [expireAfter] The maximum length of time an assignment can be valid, as an ISO8601 duration. Permitted values: `P15D`, `P30D`, `P90D`, `P180D`, or `P365D`.
  RoleManagementPolicyEligibleAssignmentRules({
    this.expirationRequired,
    this.expireAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationRequired': ?expirationRequired,
      'expireAfter': ?expireAfter,
    };
  }

  factory RoleManagementPolicyEligibleAssignmentRules.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyEligibleAssignmentRules(
      expirationRequired: map['expirationRequired'] == null ? null : (map['expirationRequired']! as bool).input(),
      expireAfter: map['expireAfter'] == null ? null : (map['expireAfter']! as String).input(),
    );
  }
}

