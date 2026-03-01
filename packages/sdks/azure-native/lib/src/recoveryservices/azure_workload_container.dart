// ignore_for_file: unused_element, unnecessary_cast

import 'azure_workload_container_extended_info.dart';

/// Container for the workloads running inside Azure Compute or Classic Compute.
class AzureWorkloadContainer {
  /// Type of backup management for the container.
  final String? backupManagementType;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'AzureWorkloadContainer'.
  final String containerType;
  /// Additional details of a workload container.
  final AzureWorkloadContainerExtendedInfo? extendedInfo;
  /// Friendly name of the container.
  final String? friendlyName;
  /// Status of health of the container.
  final String? healthStatus;
  /// Time stamp when this container was updated.
  final String? lastUpdatedTime;
  /// Re-Do Operation
  final String? operationType;
  /// Type of the protectable object associated with this container
  final String? protectableObjectType;
  /// Status of registration of the container with the Recovery Services Vault.
  final String? registrationStatus;
  /// ARM ID of the virtual machine represented by this Azure Workload Container
  final String? sourceResourceId;
  /// Workload type for which registration was sent.
  final String? workloadType;

  /// Creates a new [AzureWorkloadContainer].
  /// [backupManagementType] Type of backup management for the container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [extendedInfo] Additional details of a workload container.
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [lastUpdatedTime] Time stamp when this container was updated.
  /// [operationType] Re-Do Operation
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  /// [sourceResourceId] ARM ID of the virtual machine represented by this Azure Workload Container
  /// [workloadType] Workload type for which registration was sent.
  AzureWorkloadContainer({
    this.backupManagementType,
    required this.containerType,
    this.extendedInfo,
    this.friendlyName,
    this.healthStatus,
    this.lastUpdatedTime,
    this.operationType,
    this.protectableObjectType,
    this.registrationStatus,
    this.sourceResourceId,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'containerType': containerType,
      'extendedInfo': ?extendedInfo == null ? null : extendedInfo!.toMap(),
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'lastUpdatedTime': ?lastUpdatedTime,
      'operationType': ?operationType,
      'protectableObjectType': ?protectableObjectType,
      'registrationStatus': ?registrationStatus,
      'sourceResourceId': ?sourceResourceId,
      'workloadType': ?workloadType,
    };
  }

  factory AzureWorkloadContainer.fromMap(Map<String, dynamic> map) {
    return AzureWorkloadContainer(
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      containerType: map['containerType'] as String,
      extendedInfo: map['extendedInfo'] == null ? null : AzureWorkloadContainerExtendedInfo.fromMap((map['extendedInfo'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthStatus: map['healthStatus'] == null ? null : map['healthStatus'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : map['lastUpdatedTime'] as String,
      operationType: map['operationType'] == null ? null : map['operationType'] as String,
      protectableObjectType: map['protectableObjectType'] == null ? null : map['protectableObjectType'] as String,
      registrationStatus: map['registrationStatus'] == null ? null : map['registrationStatus'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      workloadType: map['workloadType'] == null ? null : map['workloadType'] as String,
    );
  }
}

