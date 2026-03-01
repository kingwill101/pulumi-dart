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
    required pulumi.Output<String> fabricName,
    pulumi.Output<EnableProtectionInputProperties>? properties,
    required pulumi.Output<String> protectionContainerName,
    pulumi.Output<String>? replicatedProtectedItemName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      properties = pulumi.Input.asOptionalInput<EnableProtectionInputProperties>(properties),
      protectionContainerName = pulumi.Input.asInput<String>(protectionContainerName),
      replicatedProtectedItemName = pulumi.Input.asOptionalInput<String>(replicatedProtectedItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

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
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<EnableProtectionInputProperties>(EnableProtectionInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      protectionContainerName: pulumi.Output.create<String>(map['protectionContainerName'] as String),
      replicatedProtectedItemName: map['replicatedProtectedItemName'] == null ? null : pulumi.Output.create<String>(map['replicatedProtectedItemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

