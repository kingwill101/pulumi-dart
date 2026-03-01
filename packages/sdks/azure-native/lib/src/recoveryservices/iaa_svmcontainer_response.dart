// ignore_for_file: unused_element, unnecessary_cast


/// IaaS VM workload-specific container.
class IaaSVMContainerResponse {
  /// Type of backup management for the container.
  final String? backupManagementType;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'IaasVMContainer'.
  final String containerType;
  /// Friendly name of the container.
  final String? friendlyName;
  /// Status of health of the container.
  final String? healthStatus;
  /// Type of the protectable object associated with this container
  final String? protectableObjectType;
  /// Status of registration of the container with the Recovery Services Vault.
  final String? registrationStatus;
  /// Resource group name of Recovery Services Vault.
  final String? resourceGroup;
  /// Fully qualified ARM url of the virtual machine represented by this Azure IaaS VM container.
  final String? virtualMachineId;
  /// Specifies whether the container represents a Classic or an Azure Resource Manager VM.
  final String? virtualMachineVersion;

  /// Creates a new [IaaSVMContainerResponse].
  /// [backupManagementType] Type of backup management for the container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  /// [resourceGroup] Resource group name of Recovery Services Vault.
  /// [virtualMachineId] Fully qualified ARM url of the virtual machine represented by this Azure IaaS VM container.
  /// [virtualMachineVersion] Specifies whether the container represents a Classic or an Azure Resource Manager VM.
  IaaSVMContainerResponse({
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

  factory IaaSVMContainerResponse.fromMap(Map<String, dynamic> map) {
    return IaaSVMContainerResponse(
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      containerType: map['containerType'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthStatus: map['healthStatus'] == null ? null : map['healthStatus'] as String,
      protectableObjectType: map['protectableObjectType'] == null ? null : map['protectableObjectType'] as String,
      registrationStatus: map['registrationStatus'] == null ? null : map['registrationStatus'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      virtualMachineId: map['virtualMachineId'] == null ? null : map['virtualMachineId'] as String,
      virtualMachineVersion: map['virtualMachineVersion'] == null ? null : map['virtualMachineVersion'] as String,
    );
  }
}

