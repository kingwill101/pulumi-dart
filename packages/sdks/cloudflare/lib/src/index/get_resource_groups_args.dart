// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_resource_groups_get_resource_groups_args_doc}
/// Arguments for getResourceGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_resource_groups_get_resource_groups_args_doc}
class GetResourceGroupsArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// ID of the resource group to be fetched.
  final pulumi.Input<String?>? id;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Name of the resource group to be fetched.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetResourceGroupsArgs].
  /// [accountId] Account identifier tag.
  /// [id] ID of the resource group to be fetched.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Name of the resource group to be fetched.
  const GetResourceGroupsArgs({
    this.accountId,
    this.id,
    this.maxItems,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'maxItems': ?maxItems,
      'name': ?name,
    };
  }

  factory GetResourceGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
