// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_result_policy_permission_group_meta.dart';

class GetUserGroupsResultPolicyPermissionGroup {
  /// Identifier of the permission group.
  final pulumi.Input<String> id;
  /// Attributes associated to the permission group.
  final pulumi.Input<GetUserGroupsResultPolicyPermissionGroupMeta> meta;
  /// Name of the permission group.
  final pulumi.Input<String> name;

  /// Creates a new [GetUserGroupsResultPolicyPermissionGroup].
  /// [id] Identifier of the permission group.
  /// [meta] Attributes associated to the permission group.
  /// [name] Name of the permission group.
  const GetUserGroupsResultPolicyPermissionGroup({
    required this.id,
    required this.meta,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetUserGroupsResultPolicyPermissionGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetUserGroupsResultPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResultPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetUserGroupsResultPolicyPermissionGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
