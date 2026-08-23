// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The evaluated state of this restriction.
class MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1 {
  /// The current state of the restriction
  final pulumi.Input<String> state;

  /// Creates a new [MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1].
  /// [state] The current state of the restriction
  const MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
