// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_membership_role_expiry_detail.dart';

class GetGroupMembershipsMembershipRole {
  /// The MembershipRole expiry details, only supported for MEMBER role.
  /// Other roles cannot be accompanied with MEMBER role having expiry.
  final pulumi.Input<List<GetGroupMembershipsMembershipRoleExpiryDetail>> expiryDetails;
  /// The name of the MembershipRole. One of OWNER, MANAGER, MEMBER.
  final pulumi.Input<String> name;

  /// Creates a new [GetGroupMembershipsMembershipRole].
  /// [expiryDetails] The MembershipRole expiry details, only supported for MEMBER role.
  /// [name] The name of the MembershipRole. One of OWNER, MANAGER, MEMBER.
  const GetGroupMembershipsMembershipRole({
    required this.expiryDetails,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetails': pulumi.Input.mapInputValue<List<GetGroupMembershipsMembershipRoleExpiryDetail>, List<Map<String, dynamic>>>(expiryDetails, (value) => pulumi.Input.encodeList<GetGroupMembershipsMembershipRoleExpiryDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetGroupMembershipsMembershipRole.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsMembershipRole(
      expiryDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMembershipsMembershipRoleExpiryDetail>(map['expiryDetails']!, (value) => GetGroupMembershipsMembershipRoleExpiryDetail.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
