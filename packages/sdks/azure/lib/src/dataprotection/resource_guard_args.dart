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
  ResourceGuardArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? vaultCriticalOperationExclusionLists,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultCriticalOperationExclusionLists = pulumi.Input.asOptionalInput<List<String>>(vaultCriticalOperationExclusionLists);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultCriticalOperationExclusionLists: map['vaultCriticalOperationExclusionLists'] == null ? null : pulumi.Output.create<List<String>>((map['vaultCriticalOperationExclusionLists'] as List).cast<String>()),
    );
  }
}

