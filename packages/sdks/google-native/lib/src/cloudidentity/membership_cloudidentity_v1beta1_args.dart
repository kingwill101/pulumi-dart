// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_cloudidentity_v1beta1.dart';
import 'membership_role_cloudidentity_v1beta1.dart';

/// {@template pulumi_cloudidentity_v1beta1_membership_cloudidentity_v1beta1_args_doc}
/// The set of arguments for Membership.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_membership_cloudidentity_v1beta1_args_doc}
class MembershipCloudidentityV1beta1Args {
  final pulumi.Input<String> groupId;
  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final pulumi.Input<EntityKeyCloudidentityV1beta1>? memberKey;
  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final pulumi.Input<EntityKeyCloudidentityV1beta1> preferredMemberKey;
  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final pulumi.Input<List<MembershipRoleCloudidentityV1beta1>>? roles;

  /// Creates a new [MembershipCloudidentityV1beta1Args].
  /// [groupId] Required.
  /// [memberKey] Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  /// [preferredMemberKey] Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  /// [roles] The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  MembershipCloudidentityV1beta1Args({
    required this.groupId,
    this.memberKey,
    required this.preferredMemberKey,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'memberKey': ?pulumi.Input.mapOptionalInputValue<EntityKeyCloudidentityV1beta1, Map<String, dynamic>>(memberKey, (value) => value.toMap()),
      'preferredMemberKey': pulumi.Input.mapInputValue<EntityKeyCloudidentityV1beta1, Map<String, dynamic>>(preferredMemberKey, (value) => value.toMap()),
      'roles': ?pulumi.Input.mapOptionalInputValue<List<MembershipRoleCloudidentityV1beta1>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<MembershipRoleCloudidentityV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MembershipCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MembershipCloudidentityV1beta1Args(
      groupId: (map['groupId'] as String).input(),
      memberKey: map['memberKey'] == null ? null : (EntityKeyCloudidentityV1beta1.fromMap((map['memberKey'] as Map).cast<String, dynamic>())).input(),
      preferredMemberKey: (EntityKeyCloudidentityV1beta1.fromMap((map['preferredMemberKey'] as Map).cast<String, dynamic>())).input(),
      roles: map['roles'] == null ? null : (pulumi.Input.decodeList<MembershipRoleCloudidentityV1beta1>(map['roles'], (value) => MembershipRoleCloudidentityV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

