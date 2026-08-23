// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_member_info.dart';

/// Result data returned by getOrganizationMembers.
class GetOrganizationMembersResult {
  final List<OrganizationMemberInfo> members;

  /// Creates a new [GetOrganizationMembersResult].
  /// [members] Required.
  const GetOrganizationMembersResult({
    required this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': pulumi.Input.encodeList<OrganizationMemberInfo, Map<String, dynamic>>(members, (value) => value.toMap()),
    };
  }

  factory GetOrganizationMembersResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMembersResult(
      members: pulumi.Input.decodeList<OrganizationMemberInfo>(map['members']!, (value) => OrganizationMemberInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
