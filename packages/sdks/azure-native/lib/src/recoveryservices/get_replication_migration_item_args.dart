// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_migration_item_args_doc}
/// Arguments for getReplicationMigrationItem.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_migration_item_args_doc}
class GetReplicationMigrationItemArgs {
  /// Fabric unique name.
  final pulumi.Input<String> fabricName;
  /// Migration item name.
  final pulumi.Input<String> migrationItemName;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationMigrationItemArgs].
  /// [fabricName] Fabric unique name.
  /// [migrationItemName] Migration item name.
  /// [protectionContainerName] Protection container name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  const GetReplicationMigrationItemArgs({
    required this.fabricName,
    required this.migrationItemName,
    required this.protectionContainerName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'migrationItemName': migrationItemName,
      'protectionContainerName': protectionContainerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationMigrationItemArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationMigrationItemArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      migrationItemName: pulumi.Input.fromValue(map['migrationItemName'] as String),
      protectionContainerName: pulumi.Input.fromValue(map['protectionContainerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
