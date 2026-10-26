// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_response_cloudidentity_v1beta1.dart';
import 'membership_role_response_cloudidentity_v1beta1.dart';

/// Result data returned by getMembership.
class GetMembershipCloudidentityV1beta1Result {
  /// The time when the `Membership` was created.
  final String? createTime;
  /// Delivery setting associated with the membership.
  final String? deliverySetting;
  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final EntityKeyResponseCloudidentityV1beta1? memberKey;
  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  final String? name;
  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final EntityKeyResponseCloudidentityV1beta1? preferredMemberKey;
  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final List<MembershipRoleResponseCloudidentityV1beta1>? roles;
  /// The type of the membership.
  final String? type;
  /// The time when the `Membership` was last updated.
  final String? updateTime;

  /// Creates a new [GetMembershipCloudidentityV1beta1Result].
  /// [createTime] The time when the `Membership` was created.
  /// [deliverySetting] Delivery setting associated with the membership.
  /// [memberKey] Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  /// [name] The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  /// [preferredMemberKey] Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  /// [roles] The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  /// [type] The type of the membership.
  /// [updateTime] The time when the `Membership` was last updated.
  const GetMembershipCloudidentityV1beta1Result({
    this.createTime,
    this.deliverySetting,
    this.memberKey,
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
      'memberKey': ?memberKey?.toMap(),
      'name': ?name,
      'preferredMemberKey': ?preferredMemberKey?.toMap(),
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<MembershipRoleResponseCloudidentityV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetMembershipCloudidentityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetMembershipCloudidentityV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deliverySetting: (() { final guardedValue = map['deliverySetting']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberKey: (() { final guardedValue = map['memberKey']; if (guardedValue == null) return null; return EntityKeyResponseCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredMemberKey: (() { final guardedValue = map['preferredMemberKey']; if (guardedValue == null) return null; return EntityKeyResponseCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MembershipRoleResponseCloudidentityV1beta1>(guardedValue, (value) => MembershipRoleResponseCloudidentityV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
