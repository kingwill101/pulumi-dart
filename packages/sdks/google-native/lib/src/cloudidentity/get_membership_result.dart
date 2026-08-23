// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_response.dart';
import 'membership_role_response.dart';

/// Result data returned by getMembership.
class GetMembershipResult {
  /// The time when the `Membership` was created.
  final String createTime;
  /// Delivery setting associated with the membership.
  final String deliverySetting;
  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group}/memberships/{membership}`.
  final String name;
  /// Immutable. The `EntityKey` of the member.
  final EntityKeyResponse preferredMemberKey;
  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final List<MembershipRoleResponse> roles;
  /// The type of the membership.
  final String type;
  /// The time when the `Membership` was last updated.
  final String updateTime;

  /// Creates a new [GetMembershipResult].
  /// [createTime] The time when the `Membership` was created.
  /// [deliverySetting] Delivery setting associated with the membership.
  /// [name] The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group}/memberships/{membership}`.
  /// [preferredMemberKey] Immutable. The `EntityKey` of the member.
  /// [roles] The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  /// [type] The type of the membership.
  /// [updateTime] The time when the `Membership` was last updated.
  const GetMembershipResult({
    required this.createTime,
    required this.deliverySetting,
    required this.name,
    required this.preferredMemberKey,
    required this.roles,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deliverySetting': deliverySetting,
      'name': name,
      'preferredMemberKey': preferredMemberKey.toMap(),
      'roles': pulumi.Input.encodeList<MembershipRoleResponse, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetMembershipResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipResult(
      createTime: map['createTime'] as String,
      deliverySetting: map['deliverySetting'] as String,
      name: map['name'] as String,
      preferredMemberKey: EntityKeyResponse.fromMap((map['preferredMemberKey']! as Map).cast<String, dynamic>()),
      roles: pulumi.Input.decodeList<MembershipRoleResponse>(map['roles']!, (value) => MembershipRoleResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
