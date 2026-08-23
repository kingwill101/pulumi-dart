// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IaaS VM workload-specific backup item representing a classic virtual machine.
class AzureIaaSClassicComputeVMContainerResponse {
  /// Type of backup management for the container.
  final pulumi.Input<String>? backupManagementType;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'Microsoft.ClassicCompute/virtualMachines'.
  final pulumi.Input<String> containerType;
  /// Friendly name of the container.
  final pulumi.Input<String>? friendlyName;
  /// Status of health of the container.
  final pulumi.Input<String>? healthStatus;
  /// Type of the protectable object associated with this container
  final pulumi.Input<String>? protectableObjectType;
  /// Status of registration of the container with the Recovery Services Vault.
  final pulumi.Input<String>? registrationStatus;
  /// Resource group name of Recovery Services Vault.
  final pulumi.Input<String>? resourceGroup;
  /// Fully qualified ARM url of the virtual machine represented by this Azure IaaS VM container.
  final pulumi.Input<String>? virtualMachineId;
  /// Specifies whether the container represents a Classic or an Azure Resource Manager VM.
  final pulumi.Input<String>? virtualMachineVersion;

  /// Creates a new [AzureIaaSClassicComputeVMContainerResponse].
  /// [backupManagementType] Type of backup management for the container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  /// [resourceGroup] Resource group name of Recovery Services Vault.
  /// [virtualMachineId] Fully qualified ARM url of the virtual machine represented by this Azure IaaS VM container.
  /// [virtualMachineVersion] Specifies whether the container represents a Classic or an Azure Resource Manager VM.
  const AzureIaaSClassicComputeVMContainerResponse({
    this.backupManagementType,
    required this.containerType,
    this.friendlyName,
    this.healthStatus,
    this.protectableObjectType,
    this.registrationStatus,
    this.resourceGroup,
    this.virtualMachineId,
    this.virtualMachineVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'containerType': containerType,
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'protectableObjectType': ?protectableObjectType,
      'registrationStatus': ?registrationStatus,
      'resourceGroup': ?resourceGroup,
      'virtualMachineId': ?virtualMachineId,
      'virtualMachineVersion': ?virtualMachineVersion,
    };
  }

  factory AzureIaaSClassicComputeVMContainerResponse.fromMap(Map<String, dynamic> map) {
    return AzureIaaSClassicComputeVMContainerResponse(
      backupManagementType: (() { final guardedValue = map['backupManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerType: pulumi.Input.fromValue(map['containerType'] as String),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthStatus: (() { final guardedValue = map['healthStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectType: (() { final guardedValue = map['protectableObjectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationStatus: (() { final guardedValue = map['registrationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineId: (() { final guardedValue = map['virtualMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineVersion: (() { final guardedValue = map['virtualMachineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
