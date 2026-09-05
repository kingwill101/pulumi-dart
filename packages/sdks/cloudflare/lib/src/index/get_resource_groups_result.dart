// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_groups_result_meta.dart';
import 'get_resource_groups_result_scope.dart';

class GetResourceGroupsResult {
  /// Identifier of the resource group.
  final pulumi.Input<String> id;
  /// Attributes associated to the resource group.
  final pulumi.Input<GetResourceGroupsResultMeta> meta;
  /// Name of the resource group.
  final pulumi.Input<String> name;
  /// The scope associated to the resource group
  final pulumi.Input<List<GetResourceGroupsResultScope>> scopes;

  /// Creates a new [GetResourceGroupsResult].
  /// [id] Identifier of the resource group.
  /// [meta] Attributes associated to the resource group.
  /// [name] Name of the resource group.
  /// [scopes] The scope associated to the resource group
  const GetResourceGroupsResult({
    required this.id,
    required this.meta,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetResourceGroupsResultMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
      'scopes': pulumi.Input.mapInputValue<List<GetResourceGroupsResultScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<GetResourceGroupsResultScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResourceGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetResourceGroupsResultMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourceGroupsResultScope>(map['scopes']!, (value) => GetResourceGroupsResultScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
