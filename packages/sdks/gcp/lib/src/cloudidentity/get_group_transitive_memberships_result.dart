// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_transitive_memberships_membership.dart';

/// Result data returned by getGroupTransitiveMemberships.
class GetGroupTransitiveMembershipsResult {
  final String? group;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of memberships under the given group. Structure is documented below.
  final List<GetGroupTransitiveMembershipsMembership>? memberships;

  /// Creates a new [GetGroupTransitiveMembershipsResult].
  /// [group] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [memberships] The list of memberships under the given group. Structure is documented below.
  const GetGroupTransitiveMembershipsResult({
    this.group,
    this.id,
    this.memberships,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'id': ?id,
      'memberships': ?(() { final guardedValue = memberships; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupTransitiveMembershipsMembership, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGroupTransitiveMembershipsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsResult(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberships: (() { final guardedValue = map['memberships']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupTransitiveMembershipsMembership>(guardedValue, (value) => GetGroupTransitiveMembershipsMembership.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
