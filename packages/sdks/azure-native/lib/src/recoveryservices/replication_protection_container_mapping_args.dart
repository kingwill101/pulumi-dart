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
  final pulumi.Input<String>? mappingName;
  /// Configure protection input properties.
  final pulumi.Input<CreateProtectionContainerMappingInputProperties>? properties;
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
  ReplicationProtectionContainerMappingArgs({
    required pulumi.Output<String> fabricName,
    pulumi.Output<String>? mappingName,
    pulumi.Output<CreateProtectionContainerMappingInputProperties>? properties,
    required pulumi.Output<String> protectionContainerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      mappingName = pulumi.Input.asOptionalInput<String>(mappingName),
      properties = pulumi.Input.asOptionalInput<CreateProtectionContainerMappingInputProperties>(properties),
      protectionContainerName = pulumi.Input.asInput<String>(protectionContainerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

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
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      mappingName: map['mappingName'] == null ? null : pulumi.Output.create<String>(map['mappingName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CreateProtectionContainerMappingInputProperties>(CreateProtectionContainerMappingInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      protectionContainerName: pulumi.Output.create<String>(map['protectionContainerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

