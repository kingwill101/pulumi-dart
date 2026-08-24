// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_members_result_policy_resource_group_meta.dart';
import 'get_account_members_result_policy_resource_group_scope.dart';

class GetAccountMembersResultPolicyResourceGroup {
  /// Identifier of the resource group.
  final pulumi.Input<String> id;
  /// Attributes associated to the resource group.
  final pulumi.Input<GetAccountMembersResultPolicyResourceGroupMeta> meta;
  /// Name of the resource group.
  final pulumi.Input<String> name;
  /// A scope is a combination of scope objects which provides additional context.
  final pulumi.Input<List<GetAccountMembersResultPolicyResourceGroupScope>> scopes;

  /// Creates a new [GetAccountMembersResultPolicyResourceGroup].
  /// [id] Identifier of the resource group.
  /// [meta] Attributes associated to the resource group.
  /// [name] Name of the resource group.
  /// [scopes] A scope is a combination of scope objects which provides additional context.
  const GetAccountMembersResultPolicyResourceGroup({
    required this.id,
    required this.meta,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetAccountMembersResultPolicyResourceGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
      'scopes': pulumi.Input.mapInputValue<List<GetAccountMembersResultPolicyResourceGroupScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<GetAccountMembersResultPolicyResourceGroupScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountMembersResultPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultPolicyResourceGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetAccountMembersResultPolicyResourceGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMembersResultPolicyResourceGroupScope>(map['scopes']!, (value) => GetAccountMembersResultPolicyResourceGroupScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
