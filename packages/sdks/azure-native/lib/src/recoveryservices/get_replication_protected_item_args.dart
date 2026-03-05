// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_protected_item_args_doc}
/// Arguments for getReplicationProtectedItem.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_protected_item_args_doc}
class GetReplicationProtectedItemArgs {
  /// Fabric unique name.
  final pulumi.Input<String> fabricName;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// Replication protected item name.
  final pulumi.Input<String> replicatedProtectedItemName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationProtectedItemArgs].
  /// [fabricName] Fabric unique name.
  /// [protectionContainerName] Protection container name.
  /// [replicatedProtectedItemName] Replication protected item name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationProtectedItemArgs({
    required this.fabricName,
    required this.protectionContainerName,
    required this.replicatedProtectedItemName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'protectionContainerName': protectionContainerName,
      'replicatedProtectedItemName': replicatedProtectedItemName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationProtectedItemArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationProtectedItemArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      protectionContainerName: pulumi.Input.fromValue(map['protectionContainerName'] as String),
      replicatedProtectedItemName: pulumi.Input.fromValue(map['replicatedProtectedItemName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

