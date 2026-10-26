// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_member_info.dart';

/// Result data returned by getOrganizationMembers.
class GetOrganizationMembersResult {
  final List<OrganizationMemberInfo>? members;

  /// Creates a new [GetOrganizationMembersResult].
  /// [members] Optional.
  const GetOrganizationMembersResult({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<OrganizationMemberInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOrganizationMembersResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMembersResult(
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationMemberInfo>(guardedValue, (value) => OrganizationMemberInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
