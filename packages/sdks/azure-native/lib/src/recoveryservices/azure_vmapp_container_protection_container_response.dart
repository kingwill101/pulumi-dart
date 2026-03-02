// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_workload_container_extended_info_response.dart';

/// Container for SQL workloads under Azure Virtual Machines.
class AzureVMAppContainerProtectionContainerResponse {
  /// Type of backup management for the container.
  final pulumi.Input<String>? backupManagementType;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'VMAppContainer'.
  final pulumi.Input<String> containerType;
  /// Additional details of a workload container.
  final pulumi.Input<AzureWorkloadContainerExtendedInfoResponse>? extendedInfo;
  /// Friendly name of the container.
  final pulumi.Input<String>? friendlyName;
  /// Status of health of the container.
  final pulumi.Input<String>? healthStatus;
  /// Time stamp when this container was updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// Re-Do Operation
  final pulumi.Input<String>? operationType;
  /// Type of the protectable object associated with this container
  final pulumi.Input<String>? protectableObjectType;
  /// Status of registration of the container with the Recovery Services Vault.
  final pulumi.Input<String>? registrationStatus;
  /// ARM ID of the virtual machine represented by this Azure Workload Container
  final pulumi.Input<String>? sourceResourceId;
  /// Workload type for which registration was sent.
  final pulumi.Input<String>? workloadType;

  /// Creates a new [AzureVMAppContainerProtectionContainerResponse].
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
  AzureVMAppContainerProtectionContainerResponse({
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
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<AzureWorkloadContainerExtendedInfoResponse, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
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

  factory AzureVMAppContainerProtectionContainerResponse.fromMap(Map<String, dynamic> map) {
    return AzureVMAppContainerProtectionContainerResponse(
      backupManagementType: map['backupManagementType'] == null ? null : (map['backupManagementType']! as String).input(),
      containerType: (map['containerType'] as String).input(),
      extendedInfo: map['extendedInfo'] == null ? null : (AzureWorkloadContainerExtendedInfoResponse.fromMap((map['extendedInfo']! as Map).cast<String, dynamic>())).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      healthStatus: map['healthStatus'] == null ? null : (map['healthStatus']! as String).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime']! as String).input(),
      operationType: map['operationType'] == null ? null : (map['operationType']! as String).input(),
      protectableObjectType: map['protectableObjectType'] == null ? null : (map['protectableObjectType']! as String).input(),
      registrationStatus: map['registrationStatus'] == null ? null : (map['registrationStatus']! as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId']! as String).input(),
      workloadType: map['workloadType'] == null ? null : (map['workloadType']! as String).input(),
    );
  }
}

