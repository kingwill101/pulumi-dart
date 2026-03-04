// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_vault_get_vault_args_doc}
/// Arguments for getVault.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_vault_get_vault_args_doc}
class GetVaultArgs {
  /// Specifies the name of the Recovery Services Vault.
  final pulumi.Input<String> name;

  /// The name of the resource group in which the Recovery Services Vault resides.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVaultArgs].
  /// [name] Specifies the name of the Recovery Services Vault.
  /// [resourceGroupName] The name of the resource group in which the Recovery Services Vault resides.
  GetVaultArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetVaultArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
