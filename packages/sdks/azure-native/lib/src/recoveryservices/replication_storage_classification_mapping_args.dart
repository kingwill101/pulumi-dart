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
  final pulumi.Input<StorageMappingInputProperties>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;
  /// Storage classification mapping name.
  final pulumi.Input<String>? storageClassificationMappingName;
  /// Storage classification name.
  final pulumi.Input<String> storageClassificationName;

  /// Creates a new [ReplicationStorageClassificationMappingArgs].
  /// [fabricName] Fabric name.
  /// [properties] Storage mapping input properties.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  /// [storageClassificationMappingName] Storage classification mapping name.
  /// [storageClassificationName] Storage classification name.
  ReplicationStorageClassificationMappingArgs({
    required pulumi.Output<String> fabricName,
    pulumi.Output<StorageMappingInputProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? storageClassificationMappingName,
    required pulumi.Output<String> storageClassificationName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      properties = pulumi.Input.asOptionalInput<StorageMappingInputProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      storageClassificationMappingName = pulumi.Input.asOptionalInput<String>(storageClassificationMappingName),
      storageClassificationName = pulumi.Input.asInput<String>(storageClassificationName);

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
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<StorageMappingInputProperties>(StorageMappingInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      storageClassificationMappingName: map['storageClassificationMappingName'] == null ? null : pulumi.Output.create<String>(map['storageClassificationMappingName'] as String),
      storageClassificationName: pulumi.Output.create<String>(map['storageClassificationName'] as String),
    );
  }
}

