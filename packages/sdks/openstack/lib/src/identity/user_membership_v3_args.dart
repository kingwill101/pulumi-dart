// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_user_membership_v3_user_membership_v3_args_doc}
/// The set of arguments for UserMembershipV3.
/// {@endtemplate}
/// {@macro pulumi_identity_user_membership_v3_user_membership_v3_args_doc}
class UserMembershipV3Args {
  /// The UUID of group to which the user will be added.
  /// Changing this creates a new user membership.
  final pulumi.Input<String> groupId;

  /// The region in which to obtain the V3 Identity client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new user membership.
  final pulumi.Input<String>? region;

  /// The UUID of user to use. Changing this creates a new user membership.
  final pulumi.Input<String> userId;

  /// Creates a new [UserMembershipV3Args].
  /// [groupId] The UUID of group to which the user will be added.
  /// [region] The region in which to obtain the V3 Identity client.
  /// [userId] The UUID of user to use. Changing this creates a new user membership.
  UserMembershipV3Args({
    required this.groupId,
    this.region,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'region': ?region,
      'userId': userId,
    };
  }

  factory UserMembershipV3Args.fromMap(Map<String, dynamic> map) {
    return UserMembershipV3Args(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
