// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_protection_container_mapping_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_protection_container_mapping_args_doc}
/// The set of arguments for ReplicationProtectionContainerMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_protection_container_mapping_args_doc}
class ReplicationProtectionContainerMappingArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// Protection container mapping name.
  final pulumi.Input<String?>? mappingName;
  /// Configure protection input properties.
  final pulumi.Input<CreateProtectionContainerMappingInputProperties?>? properties;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationProtectionContainerMappingArgs].
  /// [fabricName] Fabric name.
  /// [mappingName] Protection container mapping name.
  /// [properties] Configure protection input properties.
  /// [protectionContainerName] Protection container name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  const ReplicationProtectionContainerMappingArgs({
    required this.fabricName,
    this.mappingName,
    this.properties,
    required this.protectionContainerName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'mappingName': ?mappingName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CreateProtectionContainerMappingInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectionContainerName': protectionContainerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationProtectionContainerMappingArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationProtectionContainerMappingArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      mappingName: (() { final guardedValue = map['mappingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreateProtectionContainerMappingInputProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectionContainerName: pulumi.Input.fromValue(map['protectionContainerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
