// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_vm_disk_details_response.dart';
import 'health_error_response.dart';
import 'in_mage_azure_v2_managed_disk_details_response.dart';
import 'in_mage_azure_v2_protected_disk_details_response.dart';
import 'in_mage_azure_v2_switch_provider_blocking_error_details_response.dart';
import 'in_mage_azure_v2_switch_provider_details_response.dart';
import 'osupgrade_supported_versions_response.dart';
import 'vmnic_details_response.dart';

/// InMageAzureV2 provider specific settings.
class InMageAzureV2ReplicationDetailsResponse {
  /// Agent expiry date.
  final pulumi.Input<String>? agentExpiryDate;
  /// The agent version.
  final pulumi.Input<String>? agentVersion;
  /// A value indicating all available inplace OS Upgrade configurations.
  final pulumi.Input<List<OSUpgradeSupportedVersionsResponse>>? allAvailableOSUpgradeConfigurations;
  /// Azure VM Disk details.
  final pulumi.Input<List<AzureVmDiskDetailsResponse>>? azureVMDiskDetails;
  /// The target generation for this protected item.
  final pulumi.Input<String>? azureVmGeneration;
  /// The compressed data change rate in MB.
  final pulumi.Input<double>? compressedDataRateInMB;
  /// The datastores of the on-premise machine. Value can be list of strings that contain datastore names.
  final pulumi.Input<List<String>>? datastores;
  /// A value indicating the discovery type of the machine. Value can be vCenter or physical.
  final pulumi.Input<String>? discoveryType;
  /// A value indicating whether any disk is resized for this VM.
  final pulumi.Input<String>? diskResized;
  /// The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final pulumi.Input<String>? enableRdpOnTargetOption;
  /// The firmware type of this protected item.
  final pulumi.Input<String>? firmwareType;
  /// The infrastructure VM Id.
  final pulumi.Input<String>? infrastructureVmId;
  /// Gets the Instance type.
  /// Expected value is 'InMageAzureV2'.
  final pulumi.Input<String> instanceType;
  /// The source IP address.
  final pulumi.Input<String>? ipAddress;
  /// A value indicating whether additional IR stats are available or not.
  final pulumi.Input<bool>? isAdditionalStatsAvailable;
  /// A value indicating whether installed agent needs to be updated.
  final pulumi.Input<String>? isAgentUpdateRequired;
  /// A value indicating whether the source server requires a restart after update.
  final pulumi.Input<String>? isRebootAfterUpdateRequired;
  /// The last heartbeat received from the source server.
  final pulumi.Input<String>? lastHeartbeat;
  /// The last recovery point received time.
  final pulumi.Input<String> lastRecoveryPointReceived;
  /// The last RPO calculated time.
  final pulumi.Input<String>? lastRpoCalculatedTime;
  /// The last update time received from on-prem components.
  final pulumi.Input<String>? lastUpdateReceivedTime;
  /// License Type of the VM to be used.
  final pulumi.Input<String>? licenseType;
  /// The master target Id.
  final pulumi.Input<String>? masterTargetId;
  /// The multi vm group Id.
  final pulumi.Input<String>? multiVmGroupId;
  /// The multi vm group name.
  final pulumi.Input<String>? multiVmGroupName;
  /// A value indicating whether multi vm sync is enabled or disabled.
  final pulumi.Input<String>? multiVmSyncStatus;
  /// The id of the disk containing the OS.
  final pulumi.Input<String>? osDiskId;
  /// The name of the OS on the VM.
  final pulumi.Input<String> osName;
  /// The type of the OS on the VM.
  final pulumi.Input<String>? osType;
  /// The OS Version of the protected item.
  final pulumi.Input<String>? osVersion;
  /// The process server Id.
  final pulumi.Input<String>? processServerId;
  /// The process server name.
  final pulumi.Input<String>? processServerName;
  /// The list of protected disks.
  final pulumi.Input<List<InMageAzureV2ProtectedDiskDetailsResponse>>? protectedDisks;
  /// The list of protected managed disks.
  final pulumi.Input<List<InMageAzureV2ManagedDiskDetailsResponse>>? protectedManagedDisks;
  /// The protection stage.
  final pulumi.Input<String>? protectionStage;
  /// The recovery availability set Id.
  final pulumi.Input<String>? recoveryAvailabilitySetId;
  /// The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  final pulumi.Input<String>? recoveryAzureLogStorageAccountId;
  /// The target resource group Id.
  final pulumi.Input<String>? recoveryAzureResourceGroupId;
  /// The recovery Azure storage account.
  final pulumi.Input<String>? recoveryAzureStorageAccount;
  /// Recovery Azure given name.
  final pulumi.Input<String>? recoveryAzureVMName;
  /// The Recovery Azure VM size.
  final pulumi.Input<String>? recoveryAzureVMSize;
  /// The replica id of the protected item.
  final pulumi.Input<String>? replicaId;
  /// The resync progress percentage.
  final pulumi.Input<int>? resyncProgressPercentage;
  /// The RPO in seconds.
  final pulumi.Input<double>? rpoInSeconds;
  /// The tags for the seed managed disks.
  final pulumi.Input<Map<String, String>>? seedManagedDiskTags;
  /// The selected recovery azure network Id.
  final pulumi.Input<String>? selectedRecoveryAzureNetworkId;
  /// The selected source nic Id which will be used as the primary nic during failover.
  final pulumi.Input<String>? selectedSourceNicId;
  /// The test failover virtual network.
  final pulumi.Input<String>? selectedTfoAzureNetworkId;
  /// The CPU count of the VM on the primary side.
  final pulumi.Input<int>? sourceVmCpuCount;
  /// The RAM size of the VM on the primary side.
  final pulumi.Input<int>? sourceVmRamSizeInMB;
  /// The SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;
  /// A value indicating the inplace OS Upgrade version.
  final pulumi.Input<List<String>>? supportedOSVersions;
  /// The switch provider blocking error information.
  final pulumi.Input<List<InMageAzureV2SwitchProviderBlockingErrorDetailsResponse>>? switchProviderBlockingErrorDetails;
  /// The switch provider blocking error information.
  final pulumi.Input<InMageAzureV2SwitchProviderDetailsResponse>? switchProviderDetails;
  /// The target availability zone.
  final pulumi.Input<String>? targetAvailabilityZone;
  /// The tags for the target managed disks.
  final pulumi.Input<Map<String, String>>? targetManagedDiskTags;
  /// The tags for the target NICs.
  final pulumi.Input<Map<String, String>>? targetNicTags;
  /// The target proximity placement group Id.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The ARM Id of the target Azure VM. This value will be null until the VM is failed over. Only after failure it will be populated with the ARM Id of the Azure VM.
  final pulumi.Input<String>? targetVmId;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>>? targetVmTags;
  /// The total transferred data in bytes.
  final pulumi.Input<double>? totalDataTransferred;
  /// The progress health.
  final pulumi.Input<String>? totalProgressHealth;
  /// The uncompressed data change rate in MB.
  final pulumi.Input<double>? uncompressedDataRateInMB;
  /// A value indicating whether managed disks should be used during failover.
  final pulumi.Input<String>? useManagedDisks;
  /// The vCenter infrastructure Id.
  final pulumi.Input<String>? vCenterInfrastructureId;
  /// The validation errors of the on-premise machine Value can be list of validation errors.
  final pulumi.Input<List<HealthErrorResponse>>? validationErrors;
  /// The OS disk VHD name.
  final pulumi.Input<String>? vhdName;
  /// The virtual machine Id.
  final pulumi.Input<String>? vmId;
  /// The PE Network details.
  final pulumi.Input<List<VMNicDetailsResponse>>? vmNics;
  /// The protection state for the vm.
  final pulumi.Input<String>? vmProtectionState;
  /// The protection state description for the vm.
  final pulumi.Input<String>? vmProtectionStateDescription;

  /// Creates a new [InMageAzureV2ReplicationDetailsResponse].
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The agent version.
  /// [allAvailableOSUpgradeConfigurations] A value indicating all available inplace OS Upgrade configurations.
  /// [azureVMDiskDetails] Azure VM Disk details.
  /// [azureVmGeneration] The target generation for this protected item.
  /// [compressedDataRateInMB] The compressed data change rate in MB.
  /// [datastores] The datastores of the on-premise machine. Value can be list of strings that contain datastore names.
  /// [discoveryType] A value indicating the discovery type of the machine. Value can be vCenter or physical.
  /// [diskResized] A value indicating whether any disk is resized for this VM.
  /// [enableRdpOnTargetOption] The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  /// [firmwareType] The firmware type of this protected item.
  /// [infrastructureVmId] The infrastructure VM Id.
  /// [instanceType] Gets the Instance type.
  /// [ipAddress] The source IP address.
  /// [isAdditionalStatsAvailable] A value indicating whether additional IR stats are available or not.
  /// [isAgentUpdateRequired] A value indicating whether installed agent needs to be updated.
  /// [isRebootAfterUpdateRequired] A value indicating whether the source server requires a restart after update.
  /// [lastHeartbeat] The last heartbeat received from the source server.
  /// [lastRecoveryPointReceived] The last recovery point received time.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [lastUpdateReceivedTime] The last update time received from on-prem components.
  /// [licenseType] License Type of the VM to be used.
  /// [masterTargetId] The master target Id.
  /// [multiVmGroupId] The multi vm group Id.
  /// [multiVmGroupName] The multi vm group name.
  /// [multiVmSyncStatus] A value indicating whether multi vm sync is enabled or disabled.
  /// [osDiskId] The id of the disk containing the OS.
  /// [osName] The name of the OS on the VM.
  /// [osType] The type of the OS on the VM.
  /// [osVersion] The OS Version of the protected item.
  /// [processServerId] The process server Id.
  /// [processServerName] The process server name.
  /// [protectedDisks] The list of protected disks.
  /// [protectedManagedDisks] The list of protected managed disks.
  /// [protectionStage] The protection stage.
  /// [recoveryAvailabilitySetId] The recovery availability set Id.
  /// [recoveryAzureLogStorageAccountId] The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  /// [recoveryAzureResourceGroupId] The target resource group Id.
  /// [recoveryAzureStorageAccount] The recovery Azure storage account.
  /// [recoveryAzureVMName] Recovery Azure given name.
  /// [recoveryAzureVMSize] The Recovery Azure VM size.
  /// [replicaId] The replica id of the protected item.
  /// [resyncProgressPercentage] The resync progress percentage.
  /// [rpoInSeconds] The RPO in seconds.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [selectedRecoveryAzureNetworkId] The selected recovery azure network Id.
  /// [selectedSourceNicId] The selected source nic Id which will be used as the primary nic during failover.
  /// [selectedTfoAzureNetworkId] The test failover virtual network.
  /// [sourceVmCpuCount] The CPU count of the VM on the primary side.
  /// [sourceVmRamSizeInMB] The RAM size of the VM on the primary side.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [supportedOSVersions] A value indicating the inplace OS Upgrade version.
  /// [switchProviderBlockingErrorDetails] The switch provider blocking error information.
  /// [switchProviderDetails] The switch provider blocking error information.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetVmId] The ARM Id of the target Azure VM. This value will be null until the VM is failed over. Only after failure it will be populated with the ARM Id of the Azure VM.
  /// [targetVmTags] The target VM tags.
  /// [totalDataTransferred] The total transferred data in bytes.
  /// [totalProgressHealth] The progress health.
  /// [uncompressedDataRateInMB] The uncompressed data change rate in MB.
  /// [useManagedDisks] A value indicating whether managed disks should be used during failover.
  /// [vCenterInfrastructureId] The vCenter infrastructure Id.
  /// [validationErrors] The validation errors of the on-premise machine Value can be list of validation errors.
  /// [vhdName] The OS disk VHD name.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  InMageAzureV2ReplicationDetailsResponse({
    this.agentExpiryDate,
    this.agentVersion,
    this.allAvailableOSUpgradeConfigurations,
    this.azureVMDiskDetails,
    this.azureVmGeneration,
    this.compressedDataRateInMB,
    this.datastores,
    this.discoveryType,
    this.diskResized,
    this.enableRdpOnTargetOption,
    this.firmwareType,
    this.infrastructureVmId,
    required this.instanceType,
    this.ipAddress,
    this.isAdditionalStatsAvailable,
    this.isAgentUpdateRequired,
    this.isRebootAfterUpdateRequired,
    this.lastHeartbeat,
    required this.lastRecoveryPointReceived,
    this.lastRpoCalculatedTime,
    this.lastUpdateReceivedTime,
    this.licenseType,
    this.masterTargetId,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.multiVmSyncStatus,
    this.osDiskId,
    required this.osName,
    this.osType,
    this.osVersion,
    this.processServerId,
    this.processServerName,
    this.protectedDisks,
    this.protectedManagedDisks,
    this.protectionStage,
    this.recoveryAvailabilitySetId,
    this.recoveryAzureLogStorageAccountId,
    this.recoveryAzureResourceGroupId,
    this.recoveryAzureStorageAccount,
    this.recoveryAzureVMName,
    this.recoveryAzureVMSize,
    this.replicaId,
    this.resyncProgressPercentage,
    this.rpoInSeconds,
    this.seedManagedDiskTags,
    this.selectedRecoveryAzureNetworkId,
    this.selectedSourceNicId,
    this.selectedTfoAzureNetworkId,
    this.sourceVmCpuCount,
    this.sourceVmRamSizeInMB,
    this.sqlServerLicenseType,
    this.supportedOSVersions,
    this.switchProviderBlockingErrorDetails,
    this.switchProviderDetails,
    this.targetAvailabilityZone,
    this.targetManagedDiskTags,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    this.targetVmId,
    this.targetVmTags,
    this.totalDataTransferred,
    this.totalProgressHealth,
    this.uncompressedDataRateInMB,
    this.useManagedDisks,
    this.vCenterInfrastructureId,
    this.validationErrors,
    this.vhdName,
    this.vmId,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'allAvailableOSUpgradeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<OSUpgradeSupportedVersionsResponse>, List<Map<String, dynamic>>>(allAvailableOSUpgradeConfigurations, (value) => pulumi.Input.encodeList<OSUpgradeSupportedVersionsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureVMDiskDetails': ?pulumi.Input.mapOptionalInputValue<List<AzureVmDiskDetailsResponse>, List<Map<String, dynamic>>>(azureVMDiskDetails, (value) => pulumi.Input.encodeList<AzureVmDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureVmGeneration': ?azureVmGeneration,
      'compressedDataRateInMB': ?compressedDataRateInMB,
      'datastores': ?datastores,
      'discoveryType': ?discoveryType,
      'diskResized': ?diskResized,
      'enableRdpOnTargetOption': ?enableRdpOnTargetOption,
      'firmwareType': ?firmwareType,
      'infrastructureVmId': ?infrastructureVmId,
      'instanceType': instanceType,
      'ipAddress': ?ipAddress,
      'isAdditionalStatsAvailable': ?isAdditionalStatsAvailable,
      'isAgentUpdateRequired': ?isAgentUpdateRequired,
      'isRebootAfterUpdateRequired': ?isRebootAfterUpdateRequired,
      'lastHeartbeat': ?lastHeartbeat,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lastUpdateReceivedTime': ?lastUpdateReceivedTime,
      'licenseType': ?licenseType,
      'masterTargetId': ?masterTargetId,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'multiVmSyncStatus': ?multiVmSyncStatus,
      'osDiskId': ?osDiskId,
      'osName': osName,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'processServerId': ?processServerId,
      'processServerName': ?processServerName,
      'protectedDisks': ?pulumi.Input.mapOptionalInputValue<List<InMageAzureV2ProtectedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedDisks, (value) => pulumi.Input.encodeList<InMageAzureV2ProtectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedManagedDisks': ?pulumi.Input.mapOptionalInputValue<List<InMageAzureV2ManagedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedManagedDisks, (value) => pulumi.Input.encodeList<InMageAzureV2ManagedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectionStage': ?protectionStage,
      'recoveryAvailabilitySetId': ?recoveryAvailabilitySetId,
      'recoveryAzureLogStorageAccountId': ?recoveryAzureLogStorageAccountId,
      'recoveryAzureResourceGroupId': ?recoveryAzureResourceGroupId,
      'recoveryAzureStorageAccount': ?recoveryAzureStorageAccount,
      'recoveryAzureVMName': ?recoveryAzureVMName,
      'recoveryAzureVMSize': ?recoveryAzureVMSize,
      'replicaId': ?replicaId,
      'resyncProgressPercentage': ?resyncProgressPercentage,
      'rpoInSeconds': ?rpoInSeconds,
      'seedManagedDiskTags': ?seedManagedDiskTags,
      'selectedRecoveryAzureNetworkId': ?selectedRecoveryAzureNetworkId,
      'selectedSourceNicId': ?selectedSourceNicId,
      'selectedTfoAzureNetworkId': ?selectedTfoAzureNetworkId,
      'sourceVmCpuCount': ?sourceVmCpuCount,
      'sourceVmRamSizeInMB': ?sourceVmRamSizeInMB,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'supportedOSVersions': ?supportedOSVersions,
      'switchProviderBlockingErrorDetails': ?pulumi.Input.mapOptionalInputValue<List<InMageAzureV2SwitchProviderBlockingErrorDetailsResponse>, List<Map<String, dynamic>>>(switchProviderBlockingErrorDetails, (value) => pulumi.Input.encodeList<InMageAzureV2SwitchProviderBlockingErrorDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'switchProviderDetails': ?pulumi.Input.mapOptionalInputValue<InMageAzureV2SwitchProviderDetailsResponse, Map<String, dynamic>>(switchProviderDetails, (value) => value.toMap()),
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetManagedDiskTags': ?targetManagedDiskTags,
      'targetNicTags': ?targetNicTags,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetVmId': ?targetVmId,
      'targetVmTags': ?targetVmTags,
      'totalDataTransferred': ?totalDataTransferred,
      'totalProgressHealth': ?totalProgressHealth,
      'uncompressedDataRateInMB': ?uncompressedDataRateInMB,
      'useManagedDisks': ?useManagedDisks,
      'vCenterInfrastructureId': ?vCenterInfrastructureId,
      'validationErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vhdName': ?vhdName,
      'vmId': ?vmId,
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<VMNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory InMageAzureV2ReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2ReplicationDetailsResponse(
      agentExpiryDate: (() { final guardedValue = map['agentExpiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allAvailableOSUpgradeConfigurations: (() { final guardedValue = map['allAvailableOSUpgradeConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OSUpgradeSupportedVersionsResponse>(guardedValue, (value) => OSUpgradeSupportedVersionsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      azureVMDiskDetails: (() { final guardedValue = map['azureVMDiskDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureVmDiskDetailsResponse>(guardedValue, (value) => AzureVmDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      azureVmGeneration: (() { final guardedValue = map['azureVmGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compressedDataRateInMB: (() { final guardedValue = map['compressedDataRateInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      datastores: (() { final guardedValue = map['datastores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      discoveryType: (() { final guardedValue = map['discoveryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskResized: (() { final guardedValue = map['diskResized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableRdpOnTargetOption: (() { final guardedValue = map['enableRdpOnTargetOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firmwareType: (() { final guardedValue = map['firmwareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureVmId: (() { final guardedValue = map['infrastructureVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAdditionalStatsAvailable: (() { final guardedValue = map['isAdditionalStatsAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAgentUpdateRequired: (() { final guardedValue = map['isAgentUpdateRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRebootAfterUpdateRequired: (() { final guardedValue = map['isRebootAfterUpdateRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastHeartbeat: (() { final guardedValue = map['lastHeartbeat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRecoveryPointReceived: pulumi.Input.fromValue(map['lastRecoveryPointReceived'] as String),
      lastRpoCalculatedTime: (() { final guardedValue = map['lastRpoCalculatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdateReceivedTime: (() { final guardedValue = map['lastUpdateReceivedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterTargetId: (() { final guardedValue = map['masterTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupId: (() { final guardedValue = map['multiVmGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupName: (() { final guardedValue = map['multiVmGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmSyncStatus: (() { final guardedValue = map['multiVmSyncStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDiskId: (() { final guardedValue = map['osDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osName: pulumi.Input.fromValue(map['osName'] as String),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processServerId: (() { final guardedValue = map['processServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processServerName: (() { final guardedValue = map['processServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedDisks: (() { final guardedValue = map['protectedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InMageAzureV2ProtectedDiskDetailsResponse>(guardedValue, (value) => InMageAzureV2ProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectedManagedDisks: (() { final guardedValue = map['protectedManagedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InMageAzureV2ManagedDiskDetailsResponse>(guardedValue, (value) => InMageAzureV2ManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectionStage: (() { final guardedValue = map['protectionStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAvailabilitySetId: (() { final guardedValue = map['recoveryAvailabilitySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureLogStorageAccountId: (() { final guardedValue = map['recoveryAzureLogStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureResourceGroupId: (() { final guardedValue = map['recoveryAzureResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureStorageAccount: (() { final guardedValue = map['recoveryAzureStorageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureVMName: (() { final guardedValue = map['recoveryAzureVMName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureVMSize: (() { final guardedValue = map['recoveryAzureVMSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaId: (() { final guardedValue = map['replicaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resyncProgressPercentage: (() { final guardedValue = map['resyncProgressPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rpoInSeconds: (() { final guardedValue = map['rpoInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      seedManagedDiskTags: (() { final guardedValue = map['seedManagedDiskTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      selectedRecoveryAzureNetworkId: (() { final guardedValue = map['selectedRecoveryAzureNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectedSourceNicId: (() { final guardedValue = map['selectedSourceNicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectedTfoAzureNetworkId: (() { final guardedValue = map['selectedTfoAzureNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceVmCpuCount: (() { final guardedValue = map['sourceVmCpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceVmRamSizeInMB: (() { final guardedValue = map['sourceVmRamSizeInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlServerLicenseType: (() { final guardedValue = map['sqlServerLicenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedOSVersions: (() { final guardedValue = map['supportedOSVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      switchProviderBlockingErrorDetails: (() { final guardedValue = map['switchProviderBlockingErrorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InMageAzureV2SwitchProviderBlockingErrorDetailsResponse>(guardedValue, (value) => InMageAzureV2SwitchProviderBlockingErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      switchProviderDetails: (() { final guardedValue = map['switchProviderDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InMageAzureV2SwitchProviderDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetAvailabilityZone: (() { final guardedValue = map['targetAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetManagedDiskTags: (() { final guardedValue = map['targetManagedDiskTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetNicTags: (() { final guardedValue = map['targetNicTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetProximityPlacementGroupId: (() { final guardedValue = map['targetProximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmId: (() { final guardedValue = map['targetVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmTags: (() { final guardedValue = map['targetVmTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      totalDataTransferred: (() { final guardedValue = map['totalDataTransferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalProgressHealth: (() { final guardedValue = map['totalProgressHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uncompressedDataRateInMB: (() { final guardedValue = map['uncompressedDataRateInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      useManagedDisks: (() { final guardedValue = map['useManagedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vCenterInfrastructureId: (() { final guardedValue = map['vCenterInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationErrors: (() { final guardedValue = map['validationErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vhdName: (() { final guardedValue = map['vhdName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmNics: (() { final guardedValue = map['vmNics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMNicDetailsResponse>(guardedValue, (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmProtectionState: (() { final guardedValue = map['vmProtectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmProtectionStateDescription: (() { final guardedValue = map['vmProtectionStateDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

