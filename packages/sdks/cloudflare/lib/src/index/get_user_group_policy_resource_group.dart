// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_group_policy_resource_group_meta.dart';
import 'get_user_group_policy_resource_group_scope.dart';

class GetUserGroupPolicyResourceGroup {
  /// Identifier of the resource group.
  final pulumi.Input<String> id;
  /// Attributes associated to the resource group.
  final pulumi.Input<GetUserGroupPolicyResourceGroupMeta> meta;
  /// Name of the resource group.
  final pulumi.Input<String> name;
  /// The scope associated to the resource group
  final pulumi.Input<List<GetUserGroupPolicyResourceGroupScope>> scopes;

  /// Creates a new [GetUserGroupPolicyResourceGroup].
  /// [id] Identifier of the resource group.
  /// [meta] Attributes associated to the resource group.
  /// [name] Name of the resource group.
  /// [scopes] The scope associated to the resource group
  const GetUserGroupPolicyResourceGroup({
    required this.id,
    required this.meta,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetUserGroupPolicyResourceGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
      'scopes': pulumi.Input.mapInputValue<List<GetUserGroupPolicyResourceGroupScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<GetUserGroupPolicyResourceGroupScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserGroupPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return GetUserGroupPolicyResourceGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetUserGroupPolicyResourceGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserGroupPolicyResourceGroupScope>(map['scopes']!, (value) => GetUserGroupPolicyResourceGroupScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
