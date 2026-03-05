// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key.dart';
import 'membership_role.dart';

/// {@template pulumi_cloudidentity_v1_membership_args_doc}
/// The set of arguments for Membership.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_membership_args_doc}
class MembershipArgs {
  final pulumi.Input<String> groupId;
  /// Immutable. The `EntityKey` of the member.
  final pulumi.Input<EntityKey> preferredMemberKey;
  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final pulumi.Input<List<MembershipRole>>? roles;

  /// Creates a new [MembershipArgs].
  /// [groupId] Required.
  /// [preferredMemberKey] Immutable. The `EntityKey` of the member.
  /// [roles] The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  MembershipArgs({
    required this.groupId,
    required this.preferredMemberKey,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'preferredMemberKey': pulumi.Input.mapInputValue<EntityKey, Map<String, dynamic>>(preferredMemberKey, (value) => value.toMap()),
      'roles': ?pulumi.Input.mapOptionalInputValue<List<MembershipRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<MembershipRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MembershipArgs.fromMap(Map<String, dynamic> map) {
    return MembershipArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      preferredMemberKey: pulumi.Input.fromValue(EntityKey.fromMap((map['preferredMemberKey']! as Map).cast<String, dynamic>())),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MembershipRole>(guardedValue, (value) => MembershipRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

