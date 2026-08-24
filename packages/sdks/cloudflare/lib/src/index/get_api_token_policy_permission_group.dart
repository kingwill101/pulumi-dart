// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_token_policy_permission_group_meta.dart';

class GetApiTokenPolicyPermissionGroup {
  /// Identifier of the permission group.
  final pulumi.Input<String> id;
  /// Attributes associated to the permission group.
  final pulumi.Input<GetApiTokenPolicyPermissionGroupMeta> meta;
  /// Name of the permission group.
  final pulumi.Input<String> name;

  /// Creates a new [GetApiTokenPolicyPermissionGroup].
  /// [id] Identifier of the permission group.
  /// [meta] Attributes associated to the permission group.
  /// [name] Name of the permission group.
  const GetApiTokenPolicyPermissionGroup({
    required this.id,
    required this.meta,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetApiTokenPolicyPermissionGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetApiTokenPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return GetApiTokenPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetApiTokenPolicyPermissionGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
