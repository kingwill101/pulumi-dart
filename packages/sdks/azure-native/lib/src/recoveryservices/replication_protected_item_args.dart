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
  ReplicationProtectedItemArgs({
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
      fabricName: (map['fabricName'] as String).input(),
      properties: map['properties'] == null ? null : (EnableProtectionInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      protectionContainerName: (map['protectionContainerName'] as String).input(),
      replicatedProtectedItemName: map['replicatedProtectedItemName'] == null ? null : (map['replicatedProtectedItemName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

