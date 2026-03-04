// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The evaluated state of this restriction.
class MembershipRoleRestrictionEvaluationResponse {
  /// The current state of the restriction
  final pulumi.Input<String> state;

  /// Creates a new [MembershipRoleRestrictionEvaluationResponse].
  /// [state] The current state of the restriction
  MembershipRoleRestrictionEvaluationResponse({required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory MembershipRoleRestrictionEvaluationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MembershipRoleRestrictionEvaluationResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
