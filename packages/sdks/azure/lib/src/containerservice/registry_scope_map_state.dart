// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryScopeMap resources.
class RegistryScopeMapState {
  /// A list of actions to attach to the scope map (e.g. `repo/content/read`, `repo2/content/delete`).
  final pulumi.Input<List<String>>? actions;
  /// The name of the Container Registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerRegistryName;
  /// The description of the Container Registry.
  final pulumi.Input<String>? description;
  /// Specifies the name of the scope map. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [RegistryScopeMapState].
  /// [actions] A list of actions to attach to the scope map (e.g. `repo/content/read`, `repo2/content/delete`).
  /// [containerRegistryName] The name of the Container Registry. Changing this forces a new resource to be created.
  /// [description] The description of the Container Registry.
  /// [name] Specifies the name of the scope map. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  RegistryScopeMapState({
    pulumi.Output<List<String>>? actions,
    pulumi.Output<String>? containerRegistryName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      actions = pulumi.Input.asOptionalInput<List<String>>(actions),
      containerRegistryName = pulumi.Input.asOptionalInput<String>(containerRegistryName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'containerRegistryName': ?containerRegistryName,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory RegistryScopeMapState.fromMap(Map<String, dynamic> map) {
    return RegistryScopeMapState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<String>>((map['actions'] as List).cast<String>()),
      containerRegistryName: map['containerRegistryName'] == null ? null : pulumi.Output.create<String>(map['containerRegistryName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

