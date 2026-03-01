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
    required pulumi.Output<String> fabricName,
    required pulumi.Output<String> protectionContainerName,
    required pulumi.Output<String> replicatedProtectedItemName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      protectionContainerName = pulumi.Input.asInput<String>(protectionContainerName),
      replicatedProtectedItemName = pulumi.Input.asInput<String>(replicatedProtectedItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

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
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      protectionContainerName: pulumi.Output.create<String>(map['protectionContainerName'] as String),
      replicatedProtectedItemName: pulumi.Output.create<String>(map['replicatedProtectedItemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

