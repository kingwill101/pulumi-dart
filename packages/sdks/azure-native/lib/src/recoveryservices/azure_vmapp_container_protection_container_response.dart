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
  const AzureVMAppContainerProtectionContainerResponse({
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
      backupManagementType: (() { final guardedValue = map['backupManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerType: pulumi.Input.fromValue(map['containerType'] as String),
      extendedInfo: (() { final guardedValue = map['extendedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureWorkloadContainerExtendedInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthStatus: (() { final guardedValue = map['healthStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectType: (() { final guardedValue = map['protectableObjectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationStatus: (() { final guardedValue = map['registrationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadType: (() { final guardedValue = map['workloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
