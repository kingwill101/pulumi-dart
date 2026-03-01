// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Fabric resources.
class FabricState {
  /// In what region should the fabric be located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the network mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [FabricState].
  /// [location] In what region should the fabric be located. Changing this forces a new resource to be created.
  /// [name] The name of the network mapping. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  FabricState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryVaultName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryVaultName = pulumi.Input.asOptionalInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory FabricState.fromMap(Map<String, dynamic> map) {
    return FabricState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

