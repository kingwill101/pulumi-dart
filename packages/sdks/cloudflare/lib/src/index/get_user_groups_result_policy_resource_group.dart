// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_result_policy_resource_group_meta.dart';
import 'get_user_groups_result_policy_resource_group_scope.dart';

class GetUserGroupsResultPolicyResourceGroup {
  /// Identifier of the resource group.
  final pulumi.Input<String> id;
  /// Attributes associated to the resource group.
  final pulumi.Input<GetUserGroupsResultPolicyResourceGroupMeta> meta;
  /// Name of the resource group.
  final pulumi.Input<String> name;
  /// A scope is a combination of scope objects which provides additional context.
  final pulumi.Input<List<GetUserGroupsResultPolicyResourceGroupScope>> scopes;

  /// Creates a new [GetUserGroupsResultPolicyResourceGroup].
  /// [id] Identifier of the resource group.
  /// [meta] Attributes associated to the resource group.
  /// [name] Name of the resource group.
  /// [scopes] A scope is a combination of scope objects which provides additional context.
  const GetUserGroupsResultPolicyResourceGroup({
    required this.id,
    required this.meta,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetUserGroupsResultPolicyResourceGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
      'scopes': pulumi.Input.mapInputValue<List<GetUserGroupsResultPolicyResourceGroupScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<GetUserGroupsResultPolicyResourceGroupScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserGroupsResultPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResultPolicyResourceGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetUserGroupsResultPolicyResourceGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserGroupsResultPolicyResourceGroupScope>(map['scopes']!, (value) => GetUserGroupsResultPolicyResourceGroupScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
