// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProtectionContainer resources.
class ProtectionContainerState {
  /// The name of the protection container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Name of fabric that should contain this protection container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryFabricName;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ProtectionContainerState].
  /// [name] The name of the protection container. Changing this forces a new resource to be created.
  /// [recoveryFabricName] Name of fabric that should contain this protection container. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  ProtectionContainerState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryFabricName,
    pulumi.Output<String>? recoveryVaultName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryFabricName = pulumi.Input.asOptionalInput<String>(recoveryFabricName),
      recoveryVaultName = pulumi.Input.asOptionalInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryFabricName': ?recoveryFabricName,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ProtectionContainerState.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryFabricName: map['recoveryFabricName'] == null ? null : pulumi.Output.create<String>(map['recoveryFabricName'] as String),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

