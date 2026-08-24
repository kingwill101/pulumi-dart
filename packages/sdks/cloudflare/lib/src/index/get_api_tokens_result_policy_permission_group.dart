// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_tokens_result_policy_permission_group_meta.dart';

class GetApiTokensResultPolicyPermissionGroup {
  /// Identifier of the permission group.
  final pulumi.Input<String> id;
  /// Attributes associated to the permission group.
  final pulumi.Input<GetApiTokensResultPolicyPermissionGroupMeta> meta;
  /// Name of the permission group.
  final pulumi.Input<String> name;

  /// Creates a new [GetApiTokensResultPolicyPermissionGroup].
  /// [id] Identifier of the permission group.
  /// [meta] Attributes associated to the permission group.
  /// [name] Name of the permission group.
  const GetApiTokensResultPolicyPermissionGroup({
    required this.id,
    required this.meta,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetApiTokensResultPolicyPermissionGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetApiTokensResultPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return GetApiTokensResultPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetApiTokensResultPolicyPermissionGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
