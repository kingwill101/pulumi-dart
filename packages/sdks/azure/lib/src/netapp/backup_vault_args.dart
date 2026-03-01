// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_backup_vault_backup_vault_args_doc}
/// The set of arguments for BackupVault.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_vault_backup_vault_args_doc}
class BackupVaultArgs {
  /// The name of the NetApp account in which the NetApp Vault should be created under. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the NetApp Backup Vault. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group where the NetApp Backup Vault should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BackupVaultArgs].
  /// [accountName] The name of the NetApp account in which the NetApp Vault should be created under. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the NetApp Backup Vault. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Backup Vault should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  BackupVaultArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

