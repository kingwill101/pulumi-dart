// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_response.dart';
import 'membership_role_response.dart';

/// Result data returned by getMembership.
class GetMembershipResult {
  /// The time when the `Membership` was created.
  final String? createTime;
  /// Delivery setting associated with the membership.
  final String? deliverySetting;
  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group}/memberships/{membership}`.
  final String? name;
  /// Immutable. The `EntityKey` of the member.
  final EntityKeyResponse? preferredMemberKey;
  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final List<MembershipRoleResponse>? roles;
  /// The type of the membership.
  final String? type;
  /// The time when the `Membership` was last updated.
  final String? updateTime;

  /// Creates a new [GetMembershipResult].
  /// [createTime] The time when the `Membership` was created.
  /// [deliverySetting] Delivery setting associated with the membership.
  /// [name] The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group}/memberships/{membership}`.
  /// [preferredMemberKey] Immutable. The `EntityKey` of the member.
  /// [roles] The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  /// [type] The type of the membership.
  /// [updateTime] The time when the `Membership` was last updated.
  const GetMembershipResult({
    this.createTime,
    this.deliverySetting,
    this.name,
    this.preferredMemberKey,
    this.roles,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deliverySetting': ?deliverySetting,
      'name': ?name,
      'preferredMemberKey': ?preferredMemberKey?.toMap(),
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<MembershipRoleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetMembershipResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deliverySetting: (() { final guardedValue = map['deliverySetting']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredMemberKey: (() { final guardedValue = map['preferredMemberKey']; if (guardedValue == null) return null; return EntityKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MembershipRoleResponse>(guardedValue, (value) => MembershipRoleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
