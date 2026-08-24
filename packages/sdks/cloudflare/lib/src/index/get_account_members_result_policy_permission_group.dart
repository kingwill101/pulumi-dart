// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_members_result_policy_permission_group_meta.dart';

class GetAccountMembersResultPolicyPermissionGroup {
  /// Identifier of the permission group.
  final pulumi.Input<String> id;
  /// Attributes associated to the permission group.
  final pulumi.Input<GetAccountMembersResultPolicyPermissionGroupMeta> meta;
  /// Name of the permission group.
  final pulumi.Input<String> name;

  /// Creates a new [GetAccountMembersResultPolicyPermissionGroup].
  /// [id] Identifier of the permission group.
  /// [meta] Attributes associated to the permission group.
  /// [name] Name of the permission group.
  const GetAccountMembersResultPolicyPermissionGroup({
    required this.id,
    required this.meta,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetAccountMembersResultPolicyPermissionGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetAccountMembersResultPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetAccountMembersResultPolicyPermissionGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
