// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_exascale_database_storage_vault_get_exascale_database_storage_vault_args_doc}
/// Arguments for getExascaleDatabaseStorageVault.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_exascale_database_storage_vault_get_exascale_database_storage_vault_args_doc}
class GetExascaleDatabaseStorageVaultArgs {
  /// The name of this Exadata Database Storage Vault.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Exadata Database Storage Vault exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExascaleDatabaseStorageVaultArgs].
  /// [name] The name of this Exadata Database Storage Vault.
  /// [resourceGroupName] The name of the Resource Group where the Exadata Database Storage Vault exists.
  GetExascaleDatabaseStorageVaultArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExascaleDatabaseStorageVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetExascaleDatabaseStorageVaultArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

