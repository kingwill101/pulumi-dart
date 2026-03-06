// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_vault_args_doc}
/// Arguments for getVault.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_vault_args_doc}
class GetVaultArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetVaultArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The name of the recovery services vault.
  const GetVaultArgs({
    required this.resourceGroupName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetVaultArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}

