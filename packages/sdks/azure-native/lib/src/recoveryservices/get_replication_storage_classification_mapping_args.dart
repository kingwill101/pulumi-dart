// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_storage_classification_mapping_args_doc}
/// Arguments for getReplicationStorageClassificationMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_storage_classification_mapping_args_doc}
class GetReplicationStorageClassificationMappingArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;

  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Storage classification mapping name.
  final pulumi.Input<String> storageClassificationMappingName;

  /// Storage classification name.
  final pulumi.Input<String> storageClassificationName;

  /// Creates a new [GetReplicationStorageClassificationMappingArgs].
  /// [fabricName] Fabric name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  /// [storageClassificationMappingName] Storage classification mapping name.
  /// [storageClassificationName] Storage classification name.
  GetReplicationStorageClassificationMappingArgs({
    required this.fabricName,
    required this.resourceGroupName,
    required this.resourceName,
    required this.storageClassificationMappingName,
    required this.storageClassificationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'storageClassificationMappingName': storageClassificationMappingName,
      'storageClassificationName': storageClassificationName,
    };
  }

  factory GetReplicationStorageClassificationMappingArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReplicationStorageClassificationMappingArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      storageClassificationMappingName: pulumi.Input.fromValue(
        map['storageClassificationMappingName'] as String,
      ),
      storageClassificationName: pulumi.Input.fromValue(
        map['storageClassificationName'] as String,
      ),
    );
  }
}
