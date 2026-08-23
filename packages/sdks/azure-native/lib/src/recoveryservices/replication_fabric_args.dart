// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_creation_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_fabric_args_doc}
/// The set of arguments for ReplicationFabric.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_fabric_args_doc}
class ReplicationFabricArgs {
  /// Name of the ASR fabric.
  final pulumi.Input<String>? fabricName;
  /// Fabric creation input.
  final pulumi.Input<FabricCreationInputProperties>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationFabricArgs].
  /// [fabricName] Name of the ASR fabric.
  /// [properties] Fabric creation input.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  const ReplicationFabricArgs({
    this.fabricName,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': ?fabricName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FabricCreationInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationFabricArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationFabricArgs(
      fabricName: (() { final guardedValue = map['fabricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricCreationInputProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
