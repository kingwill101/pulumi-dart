// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_role_expiry_detail.dart';

class GroupMembershipRole {
  /// The MembershipRole expiry details, only supported for MEMBER role.
  /// Other roles cannot be accompanied with MEMBER role having expiry.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipRoleExpiryDetail?>? expiryDetail;
  /// The name of the MembershipRole. Must be one of OWNER, MANAGER, MEMBER.
  /// Possible values are: `OWNER`, `MANAGER`, `MEMBER`.
  final pulumi.Input<String> name;

  /// Creates a new [GroupMembershipRole].
  /// [expiryDetail] The MembershipRole expiry details, only supported for MEMBER role.
  /// [name] The name of the MembershipRole. Must be one of OWNER, MANAGER, MEMBER.
  const GroupMembershipRole({
    this.expiryDetail,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': ?pulumi.Input.mapOptionalInputValue<GroupMembershipRoleExpiryDetail, Map<String, dynamic>>(expiryDetail, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GroupMembershipRole.fromMap(Map<String, dynamic> map) {
    return GroupMembershipRole(
      expiryDetail: (() { final guardedValue = map['expiryDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMembershipRoleExpiryDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
