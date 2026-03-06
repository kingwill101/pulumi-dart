// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_registry_scope_map_registry_scope_map_args_doc}
/// The set of arguments for RegistryScopeMap.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_scope_map_registry_scope_map_args_doc}
class RegistryScopeMapArgs {
  /// A list of actions to attach to the scope map (e.g. `repo/content/read`, `repo2/content/delete`).
  final pulumi.Input<List<String>> actions;
  /// The name of the Container Registry. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerRegistryName;
  /// The description of the Container Registry.
  final pulumi.Input<String>? description;
  /// Specifies the name of the scope map. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryScopeMapArgs].
  /// [actions] A list of actions to attach to the scope map (e.g. `repo/content/read`, `repo2/content/delete`).
  /// [containerRegistryName] The name of the Container Registry. Changing this forces a new resource to be created.
  /// [description] The description of the Container Registry.
  /// [name] Specifies the name of the scope map. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  const RegistryScopeMapArgs({
    required this.actions,
    required this.containerRegistryName,
    this.description,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'containerRegistryName': containerRegistryName,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryScopeMapArgs.fromMap(Map<String, dynamic> map) {
    return RegistryScopeMapArgs(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      containerRegistryName: pulumi.Input.fromValue(map['containerRegistryName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

