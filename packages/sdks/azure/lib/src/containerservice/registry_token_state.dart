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
    this.containerRegistryName,
    this.enabled,
    this.name,
    this.resourceGroupName,
    this.scopeMapId,
  });

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
      containerRegistryName: map['containerRegistryName'] == null ? null : (map['containerRegistryName']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      scopeMapId: map['scopeMapId'] == null ? null : (map['scopeMapId']! as String).input(),
    );
  }
}

