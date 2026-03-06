// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_membership.dart';

/// Result data returned by getGroupMemberships.
class GetGroupMembershipsResult {
  final String group;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The list of memberships under the given group. Structure is documented below.
  final List<GetGroupMembershipsMembership> memberships;

  /// Creates a new [GetGroupMembershipsResult].
  /// [group] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [memberships] The list of memberships under the given group. Structure is documented below.
  const GetGroupMembershipsResult({
    required this.group,
    required this.id,
    required this.memberships,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'id': id,
      'memberships': pulumi.Input.encodeList<GetGroupMembershipsMembership, Map<String, dynamic>>(memberships, (value) => value.toMap()),
    };
  }

  factory GetGroupMembershipsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsResult(
      group: map['group'] as String,
      id: map['id'] as String,
      memberships: pulumi.Input.decodeList<GetGroupMembershipsMembership>(map['memberships']!, (value) => GetGroupMembershipsMembership.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

