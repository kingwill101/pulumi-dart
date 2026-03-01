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
    required pulumi.Output<String> fabricName,
    pulumi.Output<String>? migrationItemName,
    required pulumi.Output<EnableMigrationInputProperties> properties,
    required pulumi.Output<String> protectionContainerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      migrationItemName = pulumi.Input.asOptionalInput<String>(migrationItemName),
      properties = pulumi.Input.asInput<EnableMigrationInputProperties>(properties),
      protectionContainerName = pulumi.Input.asInput<String>(protectionContainerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'migrationItemName': ?migrationItemName,
      'properties': pulumi.Input.mapInputValue<EnableMigrationInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectionContainerName': protectionContainerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationMigrationItemArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationMigrationItemArgs(
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      migrationItemName: map['migrationItemName'] == null ? null : pulumi.Output.create<String>(map['migrationItemName'] as String),
      properties: pulumi.Output.create<EnableMigrationInputProperties>(EnableMigrationInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      protectionContainerName: pulumi.Output.create<String>(map['protectionContainerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

