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
  ResourceGuardState({
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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vaultCriticalOperationExclusionLists: map['vaultCriticalOperationExclusionLists'] == null ? null : ((map['vaultCriticalOperationExclusionLists']! as List).cast<String>()).input(),
    );
  }
}

