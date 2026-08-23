// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_protection_container_mapping_args_doc}
/// Arguments for getReplicationProtectionContainerMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_protection_container_mapping_args_doc}
class GetReplicationProtectionContainerMappingArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// Protection Container mapping name.
  final pulumi.Input<String> mappingName;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationProtectionContainerMappingArgs].
  /// [fabricName] Fabric name.
  /// [mappingName] Protection Container mapping name.
  /// [protectionContainerName] Protection container name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  const GetReplicationProtectionContainerMappingArgs({
    required this.fabricName,
    required this.mappingName,
    required this.protectionContainerName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'mappingName': mappingName,
      'protectionContainerName': protectionContainerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationProtectionContainerMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationProtectionContainerMappingArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      mappingName: pulumi.Input.fromValue(map['mappingName'] as String),
      protectionContainerName: pulumi.Input.fromValue(map['protectionContainerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
