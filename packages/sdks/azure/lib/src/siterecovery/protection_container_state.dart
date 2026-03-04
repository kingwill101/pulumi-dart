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
    this.name,
    this.recoveryFabricName,
    this.recoveryVaultName,
    this.resourceGroupName,
  });

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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryFabricName: (() {
        final guardedValue = map['recoveryFabricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryVaultName: (() {
        final guardedValue = map['recoveryVaultName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
