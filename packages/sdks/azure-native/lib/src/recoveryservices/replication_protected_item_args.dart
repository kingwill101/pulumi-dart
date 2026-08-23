// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enable_protection_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_protected_item_args_doc}
/// The set of arguments for ReplicationProtectedItem.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_protected_item_args_doc}
class ReplicationProtectedItemArgs {
  /// Name of the fabric.
  final pulumi.Input<String> fabricName;
  /// Enable protection input properties.
  final pulumi.Input<EnableProtectionInputProperties>? properties;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// A name for the replication protected item.
  final pulumi.Input<String>? replicatedProtectedItemName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationProtectedItemArgs].
  /// [fabricName] Name of the fabric.
  /// [properties] Enable protection input properties.
  /// [protectionContainerName] Protection container name.
  /// [replicatedProtectedItemName] A name for the replication protected item.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  const ReplicationProtectedItemArgs({
    required this.fabricName,
    this.properties,
    required this.protectionContainerName,
    this.replicatedProtectedItemName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'properties': ?pulumi.Input.mapOptionalInputValue<EnableProtectionInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectionContainerName': protectionContainerName,
      'replicatedProtectedItemName': ?replicatedProtectedItemName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationProtectedItemArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationProtectedItemArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnableProtectionInputProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectionContainerName: pulumi.Input.fromValue(map['protectionContainerName'] as String),
      replicatedProtectedItemName: (() { final guardedValue = map['replicatedProtectedItemName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
