// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_resource_guard_resource_guard_args_doc}
/// The set of arguments for ResourceGuard.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_resource_guard_resource_guard_args_doc}
class ResourceGuardArgs {
  /// The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Resource Guard. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Resource Guard.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of the critical operations which are not protected by this Resource Guard.
  final pulumi.Input<List<String>>? vaultCriticalOperationExclusionLists;

  /// Creates a new [ResourceGuardArgs].
  /// [location] The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Resource Guard. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Guard.
  /// [vaultCriticalOperationExclusionLists] A list of the critical operations which are not protected by this Resource Guard.
  const ResourceGuardArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.vaultCriticalOperationExclusionLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultCriticalOperationExclusionLists': ?vaultCriticalOperationExclusionLists,
    };
  }

  factory ResourceGuardArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGuardArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vaultCriticalOperationExclusionLists: (() { final guardedValue = map['vaultCriticalOperationExclusionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
