// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryToken resources.
class RegistryTokenState {
  /// The name of the Container Registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerRegistryName;
  /// Should the Container Registry token be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the name of the token. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Container Registry Scope Map associated with the token.
  final pulumi.Input<String>? scopeMapId;

  /// Creates a new [RegistryTokenState].
  /// [containerRegistryName] The name of the Container Registry. Changing this forces a new resource to be created.
  /// [enabled] Should the Container Registry token be enabled? Defaults to `true`.
  /// [name] Specifies the name of the token. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  /// [scopeMapId] The ID of the Container Registry Scope Map associated with the token.
  RegistryTokenState({
    pulumi.Output<String>? containerRegistryName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? scopeMapId,
  }) :
      containerRegistryName = pulumi.Input.asOptionalInput<String>(containerRegistryName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scopeMapId = pulumi.Input.asOptionalInput<String>(scopeMapId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': ?containerRegistryName,
      'enabled': ?enabled,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scopeMapId': ?scopeMapId,
    };
  }

  factory RegistryTokenState.fromMap(Map<String, dynamic> map) {
    return RegistryTokenState(
      containerRegistryName: map['containerRegistryName'] == null ? null : pulumi.Output.create<String>(map['containerRegistryName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopeMapId: map['scopeMapId'] == null ? null : pulumi.Output.create<String>(map['scopeMapId'] as String),
    );
  }
}

