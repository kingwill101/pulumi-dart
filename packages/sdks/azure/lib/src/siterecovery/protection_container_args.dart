// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_protection_container_protection_container_args_doc}
/// The set of arguments for ProtectionContainer.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_protection_container_protection_container_args_doc}
class ProtectionContainerArgs {
  /// The name of the protection container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Name of fabric that should contain this protection container. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryFabricName;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProtectionContainerArgs].
  /// [name] The name of the protection container. Changing this forces a new resource to be created.
  /// [recoveryFabricName] Name of fabric that should contain this protection container. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  ProtectionContainerArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> recoveryFabricName,
    required pulumi.Output<String> recoveryVaultName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryFabricName = pulumi.Input.asInput<String>(recoveryFabricName),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryFabricName': recoveryFabricName,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProtectionContainerArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryFabricName: pulumi.Output.create<String>(map['recoveryFabricName'] as String),
      recoveryVaultName: pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

