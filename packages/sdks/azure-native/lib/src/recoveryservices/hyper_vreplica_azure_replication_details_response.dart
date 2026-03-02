// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_vm_disk_details_response.dart';
import 'hyper_vreplica_azure_managed_disk_details_response.dart';
import 'initial_replication_details_response.dart';
import 'osdetails_response.dart';
import 'osupgrade_supported_versions_response.dart';
import 'security_profile_properties_response.dart';
import 'vmnic_details_response.dart';

/// Hyper V Replica Azure provider specific settings.
class HyperVReplicaAzureReplicationDetailsResponse {
  /// A value indicating all available inplace OS Upgrade configurations.
  final pulumi.Input<List<OSUpgradeSupportedVersionsResponse>>? allAvailableOSUpgradeConfigurations;
  /// Azure VM Disk details.
  final pulumi.Input<List<AzureVmDiskDetailsResponse>>? azureVmDiskDetails;
  /// The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final pulumi.Input<String>? enableRdpOnTargetOption;
  /// The encryption info.
  final pulumi.Input<String>? encryption;
  /// Initial replication details.
  final pulumi.Input<InitialReplicationDetailsResponse>? initialReplicationDetails;
  /// Gets the Instance type.
  /// Expected value is 'HyperVReplicaAzure'.
  final pulumi.Input<String> instanceType;
  /// The last recovery point received time.
  final pulumi.Input<String> lastRecoveryPointReceived;
  /// The Last replication time.
  final pulumi.Input<String>? lastReplicatedTime;
  /// The last RPO calculated time.
  final pulumi.Input<String>? lastRpoCalculatedTime;
  /// License Type of the VM to be used.
  final pulumi.Input<String>? licenseType;
  /// The license type for Linux VM's.
  final pulumi.Input<String>? linuxLicenseType;
  /// The operating system info.
  final pulumi.Input<OSDetailsResponse>? oSDetails;
  /// The list of protected managed disks.
  final pulumi.Input<List<HyperVReplicaAzureManagedDiskDetailsResponse>>? protectedManagedDisks;
  /// The recovery availability set Id.
  final pulumi.Input<String>? recoveryAvailabilitySetId;
  /// The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  final pulumi.Input<String>? recoveryAzureLogStorageAccountId;
  /// The target resource group Id.
  final pulumi.Input<String>? recoveryAzureResourceGroupId;
  /// The recovery Azure storage account.
  final pulumi.Input<String>? recoveryAzureStorageAccount;
  /// The Recovery Azure VM size.
  final pulumi.Input<String>? recoveryAzureVMSize;
  /// Recovery Azure given name.
  final pulumi.Input<String>? recoveryAzureVmName;
  /// Last RPO value.
  final pulumi.Input<double>? rpoInSeconds;
  /// The tags for the seed managed disks.
  final pulumi.Input<Map<String, String>>? seedManagedDiskTags;
  /// The selected recovery azure network Id.
  final pulumi.Input<String>? selectedRecoveryAzureNetworkId;
  /// The selected source nic Id which will be used as the primary nic during failover.
  final pulumi.Input<String>? selectedSourceNicId;
  /// The CPU count of the VM on the primary side.
  final pulumi.Input<int>? sourceVmCpuCount;
  /// The RAM size of the VM on the primary side.
  final pulumi.Input<int>? sourceVmRamSizeInMB;
  /// The SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;
  /// The target availability zone.
  final pulumi.Input<String>? targetAvailabilityZone;
  /// The tags for the target managed disks.
  final pulumi.Input<Map<String, String>>? targetManagedDiskTags;
  /// The tags for the target NICs.
  final pulumi.Input<Map<String, String>>? targetNicTags;
  /// The target proximity placement group Id.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The target VM security profile.
  final pulumi.Input<SecurityProfilePropertiesResponse>? targetVmSecurityProfile;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>>? targetVmTags;
  /// A value indicating whether managed disks should be used during failover.
  final pulumi.Input<String>? useManagedDisks;
  /// The virtual machine Id.
  final pulumi.Input<String>? vmId;
  /// The PE Network details.
  final pulumi.Input<List<VMNicDetailsResponse>>? vmNics;
  /// The protection state for the vm.
  final pulumi.Input<String>? vmProtectionState;
  /// The protection state description for the vm.
  final pulumi.Input<String>? vmProtectionStateDescription;

  /// Creates a new [HyperVReplicaAzureReplicationDetailsResponse].
  /// [allAvailableOSUpgradeConfigurations] A value indicating all available inplace OS Upgrade configurations.
  /// [azureVmDiskDetails] Azure VM Disk details.
  /// [enableRdpOnTargetOption] The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  /// [encryption] The encryption info.
  /// [initialReplicationDetails] Initial replication details.
  /// [instanceType] Gets the Instance type.
  /// [lastRecoveryPointReceived] The last recovery point received time.
  /// [lastReplicatedTime] The Last replication time.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [licenseType] License Type of the VM to be used.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [oSDetails] The operating system info.
  /// [protectedManagedDisks] The list of protected managed disks.
  /// [recoveryAvailabilitySetId] The recovery availability set Id.
  /// [recoveryAzureLogStorageAccountId] The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  /// [recoveryAzureResourceGroupId] The target resource group Id.
  /// [recoveryAzureStorageAccount] The recovery Azure storage account.
  /// [recoveryAzureVMSize] The Recovery Azure VM size.
  /// [recoveryAzureVmName] Recovery Azure given name.
  /// [rpoInSeconds] Last RPO value.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [selectedRecoveryAzureNetworkId] The selected recovery azure network Id.
  /// [selectedSourceNicId] The selected source nic Id which will be used as the primary nic during failover.
  /// [sourceVmCpuCount] The CPU count of the VM on the primary side.
  /// [sourceVmRamSizeInMB] The RAM size of the VM on the primary side.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmTags] The target VM tags.
  /// [useManagedDisks] A value indicating whether managed disks should be used during failover.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  HyperVReplicaAzureReplicationDetailsResponse({
    this.allAvailableOSUpgradeConfigurations,
    this.azureVmDiskDetails,
    this.enableRdpOnTargetOption,
    this.encryption,
    this.initialReplicationDetails,
    required this.instanceType,
    required this.lastRecoveryPointReceived,
    this.lastReplicatedTime,
    this.lastRpoCalculatedTime,
    this.licenseType,
    this.linuxLicenseType,
    this.oSDetails,
    this.protectedManagedDisks,
    this.recoveryAvailabilitySetId,
    this.recoveryAzureLogStorageAccountId,
    this.recoveryAzureResourceGroupId,
    this.recoveryAzureStorageAccount,
    this.recoveryAzureVMSize,
    this.recoveryAzureVmName,
    this.rpoInSeconds,
    this.seedManagedDiskTags,
    this.selectedRecoveryAzureNetworkId,
    this.selectedSourceNicId,
    this.sourceVmCpuCount,
    this.sourceVmRamSizeInMB,
    this.sqlServerLicenseType,
    this.targetAvailabilityZone,
    this.targetManagedDiskTags,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    this.targetVmSecurityProfile,
    this.targetVmTags,
    this.useManagedDisks,
    this.vmId,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAvailableOSUpgradeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<OSUpgradeSupportedVersionsResponse>, List<Map<String, dynamic>>>(allAvailableOSUpgradeConfigurations, (value) => pulumi.Input.encodeList<OSUpgradeSupportedVersionsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureVmDiskDetails': ?pulumi.Input.mapOptionalInputValue<List<AzureVmDiskDetailsResponse>, List<Map<String, dynamic>>>(azureVmDiskDetails, (value) => pulumi.Input.encodeList<AzureVmDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableRdpOnTargetOption': ?enableRdpOnTargetOption,
      'encryption': ?encryption,
      'initialReplicationDetails': ?pulumi.Input.mapOptionalInputValue<InitialReplicationDetailsResponse, Map<String, dynamic>>(initialReplicationDetails, (value) => value.toMap()),
      'instanceType': instanceType,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'lastReplicatedTime': ?lastReplicatedTime,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'oSDetails': ?pulumi.Input.mapOptionalInputValue<OSDetailsResponse, Map<String, dynamic>>(oSDetails, (value) => value.toMap()),
      'protectedManagedDisks': ?pulumi.Input.mapOptionalInputValue<List<HyperVReplicaAzureManagedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedManagedDisks, (value) => pulumi.Input.encodeList<HyperVReplicaAzureManagedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryAvailabilitySetId': ?recoveryAvailabilitySetId,
      'recoveryAzureLogStorageAccountId': ?recoveryAzureLogStorageAccountId,
      'recoveryAzureResourceGroupId': ?recoveryAzureResourceGroupId,
      'recoveryAzureStorageAccount': ?recoveryAzureStorageAccount,
      'recoveryAzureVMSize': ?recoveryAzureVMSize,
      'recoveryAzureVmName': ?recoveryAzureVmName,
      'rpoInSeconds': ?rpoInSeconds,
      'seedManagedDiskTags': ?seedManagedDiskTags,
      'selectedRecoveryAzureNetworkId': ?selectedRecoveryAzureNetworkId,
      'selectedSourceNicId': ?selectedSourceNicId,
      'sourceVmCpuCount': ?sourceVmCpuCount,
      'sourceVmRamSizeInMB': ?sourceVmRamSizeInMB,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetManagedDiskTags': ?targetManagedDiskTags,
      'targetNicTags': ?targetNicTags,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetVmSecurityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfilePropertiesResponse, Map<String, dynamic>>(targetVmSecurityProfile, (value) => value.toMap()),
      'targetVmTags': ?targetVmTags,
      'useManagedDisks': ?useManagedDisks,
      'vmId': ?vmId,
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<VMNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory HyperVReplicaAzureReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzureReplicationDetailsResponse(
      allAvailableOSUpgradeConfigurations: map['allAvailableOSUpgradeConfigurations'] == null ? null : (pulumi.Input.decodeList<OSUpgradeSupportedVersionsResponse>(map['allAvailableOSUpgradeConfigurations']!, (value) => OSUpgradeSupportedVersionsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      azureVmDiskDetails: map['azureVmDiskDetails'] == null ? null : (pulumi.Input.decodeList<AzureVmDiskDetailsResponse>(map['azureVmDiskDetails']!, (value) => AzureVmDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableRdpOnTargetOption: map['enableRdpOnTargetOption'] == null ? null : (map['enableRdpOnTargetOption']! as String).input(),
      encryption: map['encryption'] == null ? null : (map['encryption']! as String).input(),
      initialReplicationDetails: map['initialReplicationDetails'] == null ? null : (InitialReplicationDetailsResponse.fromMap((map['initialReplicationDetails']! as Map).cast<String, dynamic>())).input(),
      instanceType: (map['instanceType'] as String).input(),
      lastRecoveryPointReceived: (map['lastRecoveryPointReceived'] as String).input(),
      lastReplicatedTime: map['lastReplicatedTime'] == null ? null : (map['lastReplicatedTime']! as String).input(),
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : (map['lastRpoCalculatedTime']! as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      linuxLicenseType: map['linuxLicenseType'] == null ? null : (map['linuxLicenseType']! as String).input(),
      oSDetails: map['oSDetails'] == null ? null : (OSDetailsResponse.fromMap((map['oSDetails']! as Map).cast<String, dynamic>())).input(),
      protectedManagedDisks: map['protectedManagedDisks'] == null ? null : (pulumi.Input.decodeList<HyperVReplicaAzureManagedDiskDetailsResponse>(map['protectedManagedDisks']!, (value) => HyperVReplicaAzureManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recoveryAvailabilitySetId: map['recoveryAvailabilitySetId'] == null ? null : (map['recoveryAvailabilitySetId']! as String).input(),
      recoveryAzureLogStorageAccountId: map['recoveryAzureLogStorageAccountId'] == null ? null : (map['recoveryAzureLogStorageAccountId']! as String).input(),
      recoveryAzureResourceGroupId: map['recoveryAzureResourceGroupId'] == null ? null : (map['recoveryAzureResourceGroupId']! as String).input(),
      recoveryAzureStorageAccount: map['recoveryAzureStorageAccount'] == null ? null : (map['recoveryAzureStorageAccount']! as String).input(),
      recoveryAzureVMSize: map['recoveryAzureVMSize'] == null ? null : (map['recoveryAzureVMSize']! as String).input(),
      recoveryAzureVmName: map['recoveryAzureVmName'] == null ? null : (map['recoveryAzureVmName']! as String).input(),
      rpoInSeconds: map['rpoInSeconds'] == null ? null : (map['rpoInSeconds']! as double).input(),
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : ((map['seedManagedDiskTags']! as Map).cast<String, String>()).input(),
      selectedRecoveryAzureNetworkId: map['selectedRecoveryAzureNetworkId'] == null ? null : (map['selectedRecoveryAzureNetworkId']! as String).input(),
      selectedSourceNicId: map['selectedSourceNicId'] == null ? null : (map['selectedSourceNicId']! as String).input(),
      sourceVmCpuCount: map['sourceVmCpuCount'] == null ? null : (map['sourceVmCpuCount']! as int).input(),
      sourceVmRamSizeInMB: map['sourceVmRamSizeInMB'] == null ? null : (map['sourceVmRamSizeInMB']! as int).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType']! as String).input(),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : (map['targetAvailabilityZone']! as String).input(),
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : ((map['targetManagedDiskTags']! as Map).cast<String, String>()).input(),
      targetNicTags: map['targetNicTags'] == null ? null : ((map['targetNicTags']! as Map).cast<String, String>()).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId']! as String).input(),
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : (SecurityProfilePropertiesResponse.fromMap((map['targetVmSecurityProfile']! as Map).cast<String, dynamic>())).input(),
      targetVmTags: map['targetVmTags'] == null ? null : ((map['targetVmTags']! as Map).cast<String, String>()).input(),
      useManagedDisks: map['useManagedDisks'] == null ? null : (map['useManagedDisks']! as String).input(),
      vmId: map['vmId'] == null ? null : (map['vmId']! as String).input(),
      vmNics: map['vmNics'] == null ? null : (pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics']!, (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmProtectionState: map['vmProtectionState'] == null ? null : (map['vmProtectionState']! as String).input(),
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : (map['vmProtectionStateDescription']! as String).input(),
    );
  }
}

