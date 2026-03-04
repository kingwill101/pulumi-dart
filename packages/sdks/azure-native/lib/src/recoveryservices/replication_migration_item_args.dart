// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enable_migration_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_migration_item_args_doc}
/// The set of arguments for ReplicationMigrationItem.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_migration_item_args_doc}
class ReplicationMigrationItemArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;

  /// Migration item name.
  final pulumi.Input<String>? migrationItemName;

  /// Enable migration input properties.
  final pulumi.Input<EnableMigrationInputProperties> properties;

  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;

  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationMigrationItemArgs].
  /// [fabricName] Fabric name.
  /// [migrationItemName] Migration item name.
  /// [properties] Enable migration input properties.
  /// [protectionContainerName] Protection container name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  ReplicationMigrationItemArgs({
    required this.fabricName,
    this.migrationItemName,
    required this.properties,
    required this.protectionContainerName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'migrationItemName': ?migrationItemName,
      'properties':
          pulumi.Input.mapInputValue<
            EnableMigrationInputProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'protectionContainerName': protectionContainerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationMigrationItemArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationMigrationItemArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      migrationItemName: (() {
        final guardedValue = map['migrationItemName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        EnableMigrationInputProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      protectionContainerName: pulumi.Input.fromValue(
        map['protectionContainerName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
