// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_mapping_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_storage_classification_mapping_args_doc}
/// The set of arguments for ReplicationStorageClassificationMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_storage_classification_mapping_args_doc}
class ReplicationStorageClassificationMappingArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// Storage mapping input properties.
  final pulumi.Input<StorageMappingInputProperties?>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;
  /// Storage classification mapping name.
  final pulumi.Input<String?>? storageClassificationMappingName;
  /// Storage classification name.
  final pulumi.Input<String> storageClassificationName;

  /// Creates a new [ReplicationStorageClassificationMappingArgs].
  /// [fabricName] Fabric name.
  /// [properties] Storage mapping input properties.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  /// [storageClassificationMappingName] Storage classification mapping name.
  /// [storageClassificationName] Storage classification name.
  const ReplicationStorageClassificationMappingArgs({
    required this.fabricName,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
    this.storageClassificationMappingName,
    required this.storageClassificationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'properties': ?pulumi.Input.mapOptionalInputValue<StorageMappingInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'storageClassificationMappingName': ?storageClassificationMappingName,
      'storageClassificationName': storageClassificationName,
    };
  }

  factory ReplicationStorageClassificationMappingArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationStorageClassificationMappingArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageMappingInputProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      storageClassificationMappingName: (() { final guardedValue = map['storageClassificationMappingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClassificationName: pulumi.Input.fromValue(map['storageClassificationName'] as String),
    );
  }
}
