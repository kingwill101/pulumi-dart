// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceGuard resources.
class ResourceGuardState {
  /// The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Resource Guard. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Resource Guard.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of the critical operations which are not protected by this Resource Guard.
  final pulumi.Input<List<String>>? vaultCriticalOperationExclusionLists;

  /// Creates a new [ResourceGuardState].
  /// [location] The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Resource Guard. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Guard.
  /// [vaultCriticalOperationExclusionLists] A list of the critical operations which are not protected by this Resource Guard.
  const ResourceGuardState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.vaultCriticalOperationExclusionLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'vaultCriticalOperationExclusionLists': ?vaultCriticalOperationExclusionLists,
    };
  }

  factory ResourceGuardState.fromMap(Map<String, dynamic> map) {
    return ResourceGuardState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vaultCriticalOperationExclusionLists: (() { final guardedValue = map['vaultCriticalOperationExclusionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

