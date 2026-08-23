// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1_get_membership_args_doc}
/// Arguments for getMembership.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_get_membership_args_doc}
class GetMembershipArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> membershipId;

  /// Creates a new [GetMembershipArgs].
  /// [groupId] Required.
  /// [membershipId] Required.
  const GetMembershipArgs({
    required this.groupId,
    required this.membershipId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'membershipId': membershipId,
    };
  }

  factory GetMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
    );
  }
}
