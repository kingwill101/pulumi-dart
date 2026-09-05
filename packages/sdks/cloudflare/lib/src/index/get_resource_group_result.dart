// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_group_meta.dart';
import 'get_resource_group_scope.dart';

/// Result data returned by getResourceGroup.
class GetResourceGroupResult {
  /// Account identifier tag.
  final String? accountId;
  /// Identifier of the resource group.
  final String? id;
  /// Attributes associated to the resource group.
  final GetResourceGroupMeta? meta;
  /// Name of the resource group.
  final String? name;
  /// Resource Group identifier tag.
  final String? resourceGroupId;
  /// The scope associated to the resource group
  final List<GetResourceGroupScope>? scopes;

  /// Creates a new [GetResourceGroupResult].
  /// [accountId] Account identifier tag.
  /// [id] Identifier of the resource group.
  /// [meta] Attributes associated to the resource group.
  /// [name] Name of the resource group.
  /// [resourceGroupId] Resource Group identifier tag.
  /// [scopes] The scope associated to the resource group
  const GetResourceGroupResult({
    this.accountId,
    this.id,
    this.meta,
    this.name,
    this.resourceGroupId,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'meta': ?meta?.toMap(),
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'scopes': ?(() { final guardedValue = scopes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourceGroupScope, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetResourceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return GetResourceGroupMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourceGroupScope>(guardedValue, (value) => GetResourceGroupScope.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
