// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Storage Account workload-specific container.
class AzureStorageContainer {
  /// Whether storage account lock is to be acquired for this container or not.
  final pulumi.Input<String>? acquireStorageAccountLock;
  /// Type of backup management for the container.
  final pulumi.Input<String>? backupManagementType;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'StorageContainer'.
  final pulumi.Input<String> containerType;
  /// Friendly name of the container.
  final pulumi.Input<String>? friendlyName;
  /// Status of health of the container.
  final pulumi.Input<String>? healthStatus;
  /// Re-Do Operation
  final pulumi.Input<String>? operationType;
  /// Type of the protectable object associated with this container
  final pulumi.Input<String>? protectableObjectType;
  /// Number of items backed up in this container.
  final pulumi.Input<double>? protectedItemCount;
  /// Status of registration of the container with the Recovery Services Vault.
  final pulumi.Input<String>? registrationStatus;
  /// Resource group name of Recovery Services Vault.
  final pulumi.Input<String>? resourceGroup;
  /// Fully qualified ARM url.
  final pulumi.Input<String>? sourceResourceId;
  /// Storage account version.
  final pulumi.Input<String>? storageAccountVersion;

  /// Creates a new [AzureStorageContainer].
  /// [acquireStorageAccountLock] Whether storage account lock is to be acquired for this container or not.
  /// [backupManagementType] Type of backup management for the container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [operationType] Re-Do Operation
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [protectedItemCount] Number of items backed up in this container.
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  /// [resourceGroup] Resource group name of Recovery Services Vault.
  /// [sourceResourceId] Fully qualified ARM url.
  /// [storageAccountVersion] Storage account version.
  AzureStorageContainer({
    this.acquireStorageAccountLock,
    this.backupManagementType,
    required this.containerType,
    this.friendlyName,
    this.healthStatus,
    this.operationType,
    this.protectableObjectType,
    this.protectedItemCount,
    this.registrationStatus,
    this.resourceGroup,
    this.sourceResourceId,
    this.storageAccountVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acquireStorageAccountLock': ?acquireStorageAccountLock,
      'backupManagementType': ?backupManagementType,
      'containerType': containerType,
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'operationType': ?operationType,
      'protectableObjectType': ?protectableObjectType,
      'protectedItemCount': ?protectedItemCount,
      'registrationStatus': ?registrationStatus,
      'resourceGroup': ?resourceGroup,
      'sourceResourceId': ?sourceResourceId,
      'storageAccountVersion': ?storageAccountVersion,
    };
  }

  factory AzureStorageContainer.fromMap(Map<String, dynamic> map) {
    return AzureStorageContainer(
      acquireStorageAccountLock: map['acquireStorageAccountLock'] == null ? null : (map['acquireStorageAccountLock']! as String).input(),
      backupManagementType: map['backupManagementType'] == null ? null : (map['backupManagementType']! as String).input(),
      containerType: (map['containerType'] as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      healthStatus: map['healthStatus'] == null ? null : (map['healthStatus']! as String).input(),
      operationType: map['operationType'] == null ? null : (map['operationType']! as String).input(),
      protectableObjectType: map['protectableObjectType'] == null ? null : (map['protectableObjectType']! as String).input(),
      protectedItemCount: map['protectedItemCount'] == null ? null : (map['protectedItemCount']! as double).input(),
      registrationStatus: map['registrationStatus'] == null ? null : (map['registrationStatus']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId']! as String).input(),
      storageAccountVersion: map['storageAccountVersion'] == null ? null : (map['storageAccountVersion']! as String).input(),
    );
  }
}

