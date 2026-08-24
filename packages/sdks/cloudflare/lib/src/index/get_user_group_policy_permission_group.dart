// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_group_policy_permission_group_meta.dart';

class GetUserGroupPolicyPermissionGroup {
  /// Identifier of the permission group.
  final pulumi.Input<String> id;
  /// Attributes associated to the permission group.
  final pulumi.Input<GetUserGroupPolicyPermissionGroupMeta> meta;
  /// Name of the permission group.
  final pulumi.Input<String> name;

  /// Creates a new [GetUserGroupPolicyPermissionGroup].
  /// [id] Identifier of the permission group.
  /// [meta] Attributes associated to the permission group.
  /// [name] Name of the permission group.
  const GetUserGroupPolicyPermissionGroup({
    required this.id,
    required this.meta,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetUserGroupPolicyPermissionGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetUserGroupPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return GetUserGroupPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetUserGroupPolicyPermissionGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
