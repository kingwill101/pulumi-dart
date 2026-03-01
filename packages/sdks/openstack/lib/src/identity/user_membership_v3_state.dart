// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserMembershipV3 resources.
class UserMembershipV3State {
  /// The UUID of group to which the user will be added.
  /// Changing this creates a new user membership.
  final pulumi.Input<String>? groupId;
  /// The region in which to obtain the V3 Identity client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new user membership.
  final pulumi.Input<String>? region;
  /// The UUID of user to use. Changing this creates a new user membership.
  final pulumi.Input<String>? userId;

  /// Creates a new [UserMembershipV3State].
  /// [groupId] The UUID of group to which the user will be added.
  /// [region] The region in which to obtain the V3 Identity client.
  /// [userId] The UUID of user to use. Changing this creates a new user membership.
  UserMembershipV3State({
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userId,
  }) :
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      region = pulumi.Input.asOptionalInput<String>(region),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'region': ?region,
      'userId': ?userId,
    };
  }

  factory UserMembershipV3State.fromMap(Map<String, dynamic> map) {
    return UserMembershipV3State(
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

