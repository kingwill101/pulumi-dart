// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_membership.dart';

/// Result data returned by getGroupMemberships.
class GetGroupMembershipsResult {
  final String? group;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of memberships under the given group. Structure is documented below.
  final List<GetGroupMembershipsMembership>? memberships;

  /// Creates a new [GetGroupMembershipsResult].
  /// [group] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [memberships] The list of memberships under the given group. Structure is documented below.
  const GetGroupMembershipsResult({
    this.group,
    this.id,
    this.memberships,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'id': ?id,
      'memberships': ?(() { final guardedValue = memberships; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupMembershipsMembership, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGroupMembershipsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsResult(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberships: (() { final guardedValue = map['memberships']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupMembershipsMembership>(guardedValue, (value) => GetGroupMembershipsMembership.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
