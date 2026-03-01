// ignore_for_file: unused_element, unnecessary_cast

import 'group_membership_role_expiry_detail.dart';

class GroupMembershipRole {
  /// The MembershipRole expiry details, only supported for MEMBER role.
  /// Other roles cannot be accompanied with MEMBER role having expiry.
  /// Structure is documented below.
  final GroupMembershipRoleExpiryDetail? expiryDetail;
  /// The name of the MembershipRole. Must be one of OWNER, MANAGER, MEMBER.
  /// Possible values are: `OWNER`, `MANAGER`, `MEMBER`.
  final String name;

  /// Creates a new [GroupMembershipRole].
  /// [expiryDetail] The MembershipRole expiry details, only supported for MEMBER role.
  /// [name] The name of the MembershipRole. Must be one of OWNER, MANAGER, MEMBER.
  GroupMembershipRole({
    this.expiryDetail,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': ?expiryDetail == null ? null : expiryDetail!.toMap(),
      'name': name,
    };
  }

  factory GroupMembershipRole.fromMap(Map<String, dynamic> map) {
    return GroupMembershipRole(
      expiryDetail: map['expiryDetail'] == null ? null : GroupMembershipRoleExpiryDetail.fromMap((map['expiryDetail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

