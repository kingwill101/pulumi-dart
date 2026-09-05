// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_member_policy_resource_group_meta.dart';
import 'get_account_member_policy_resource_group_scope.dart';

class GetAccountMemberPolicyResourceGroup {
  /// Identifier of the resource group.
  final pulumi.Input<String> id;
  /// Attributes associated to the resource group.
  final pulumi.Input<GetAccountMemberPolicyResourceGroupMeta> meta;
  /// Name of the resource group.
  final pulumi.Input<String> name;
  /// The scope associated to the resource group
  final pulumi.Input<List<GetAccountMemberPolicyResourceGroupScope>> scopes;

  /// Creates a new [GetAccountMemberPolicyResourceGroup].
  /// [id] Identifier of the resource group.
  /// [meta] Attributes associated to the resource group.
  /// [name] Name of the resource group.
  /// [scopes] The scope associated to the resource group
  const GetAccountMemberPolicyResourceGroup({
    required this.id,
    required this.meta,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetAccountMemberPolicyResourceGroupMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
      'scopes': pulumi.Input.mapInputValue<List<GetAccountMemberPolicyResourceGroupScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<GetAccountMemberPolicyResourceGroupScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountMemberPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberPolicyResourceGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetAccountMemberPolicyResourceGroupMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMemberPolicyResourceGroupScope>(map['scopes']!, (value) => GetAccountMemberPolicyResourceGroupScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
