// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleManagementPolicyEligibleAssignmentRule {
  /// (Boolean) Must an assignment have an expiry date.
  final pulumi.Input<bool> expirationRequired;
  /// (String) The maximum length of time an assignment can be valid, as an ISO8601 duration.
  final pulumi.Input<String> expireAfter;

  /// Creates a new [GetRoleManagementPolicyEligibleAssignmentRule].
  /// [expirationRequired] (Boolean) Must an assignment have an expiry date.
  /// [expireAfter] (String) The maximum length of time an assignment can be valid, as an ISO8601 duration.
  GetRoleManagementPolicyEligibleAssignmentRule({
    required this.expirationRequired,
    required this.expireAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationRequired': expirationRequired,
      'expireAfter': expireAfter,
    };
  }

  factory GetRoleManagementPolicyEligibleAssignmentRule.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyEligibleAssignmentRule(
      expirationRequired: (map['expirationRequired'] as bool).input(),
      expireAfter: (map['expireAfter'] as String).input(),
    );
  }
}

