// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_rcm_agent_upgrade_blocking_error_details_response.dart';
import 'in_mage_rcm_discovered_protected_vm_details_response.dart';
import 'in_mage_rcm_last_agent_upgrade_error_details_response.dart';
import 'in_mage_rcm_mobility_agent_details_response.dart';
import 'in_mage_rcm_nic_details_response.dart';
import 'in_mage_rcm_protected_disk_details_response.dart';
import 'in_mage_rcm_un_protected_disk_details_response.dart';
import 'security_profile_properties_response.dart';
import 'user_created_resource_tag_response.dart';

/// InMageRcm provider specific details.
class InMageRcmReplicationDetailsResponse {
  /// The agent version to which last agent upgrade was attempted.
  final pulumi.Input<String> agentUpgradeAttemptToVersion;
  /// The agent upgrade blocking error information.
  final pulumi.Input<List<InMageRcmAgentUpgradeBlockingErrorDetailsResponse>>? agentUpgradeBlockingErrorDetails;
  /// The agent upgrade job Id.
  final pulumi.Input<String> agentUpgradeJobId;
  /// The agent auto upgrade state.
  final pulumi.Input<String> agentUpgradeState;
  /// The allocated memory in MB.
  final pulumi.Input<double> allocatedMemoryInMB;
  /// The discovered VM details.
  final pulumi.Input<InMageRcmDiscoveredProtectedVmDetailsResponse>? discoveredVmDetails;
  /// The type of the discovered VM.
  final pulumi.Input<String> discoveryType;
  /// The ARM Id of the discovered VM.
  final pulumi.Input<String> fabricDiscoveryMachineId;
  /// The recovery point Id to which the VM was failed over.
  final pulumi.Input<String> failoverRecoveryPointId;
  /// The firmware type.
  final pulumi.Input<String> firmwareType;
  /// The initial replication processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final pulumi.Input<double> initialReplicationProcessedBytes;
  /// The initial replication progress health.
  final pulumi.Input<String> initialReplicationProgressHealth;
  /// The initial replication progress percentage. This is calculated based on total bytes processed for all disks in the source VM.
  final pulumi.Input<int> initialReplicationProgressPercentage;
  /// The initial replication transferred bytes from source VM to azure for all selected disks on source VM.
  final pulumi.Input<double> initialReplicationTransferredBytes;
  /// Gets the Instance type.
  /// Expected value is 'InMageRcm'.
  final pulumi.Input<String> instanceType;
  /// The virtual machine internal identifier.
  final pulumi.Input<String> internalIdentifier;
  /// A value indicating whether agent registration was successful after failover.
  final pulumi.Input<bool> isAgentRegistrationSuccessfulAfterFailover;
  /// A value indicating whether last agent upgrade was successful or not.
  final pulumi.Input<String> isLastUpgradeSuccessful;
  /// The last agent upgrade error information.
  final pulumi.Input<List<InMageRcmLastAgentUpgradeErrorDetailsResponse>>? lastAgentUpgradeErrorDetails;
  /// The last agent upgrade type.
  final pulumi.Input<String> lastAgentUpgradeType;
  /// The last recovery point Id.
  final pulumi.Input<String> lastRecoveryPointId;
  /// The last recovery point received time.
  final pulumi.Input<String> lastRecoveryPointReceived;
  /// The last recovery point objective calculated time.
  final pulumi.Input<String> lastRpoCalculatedTime;
  /// The last recovery point objective value.
  final pulumi.Input<double> lastRpoInSeconds;
  /// License Type of the VM to be used.
  final pulumi.Input<String>? licenseType;
  /// The license type for Linux VM's.
  final pulumi.Input<String>? linuxLicenseType;
  /// The mobility agent information.
  final pulumi.Input<InMageRcmMobilityAgentDetailsResponse>? mobilityAgentDetails;
  /// The multi VM group name.
  final pulumi.Input<String> multiVmGroupName;
  /// The OS name associated with VM.
  final pulumi.Input<String>? osName;
  /// The type of the OS on the VM.
  final pulumi.Input<String> osType;
  /// The IP address of the primary network interface.
  final pulumi.Input<String> primaryNicIpAddress;
  /// The process server Id.
  final pulumi.Input<String> processServerId;
  /// The process server name.
  final pulumi.Input<String> processServerName;
  /// The processor core count.
  final pulumi.Input<int> processorCoreCount;
  /// The list of protected disks.
  final pulumi.Input<List<InMageRcmProtectedDiskDetailsResponse>>? protectedDisks;
  /// The resync processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final pulumi.Input<double> resyncProcessedBytes;
  /// The resync progress health.
  final pulumi.Input<String> resyncProgressHealth;
  /// The resync progress percentage. This is calculated based on total bytes processed for all disks in the source VM.
  final pulumi.Input<int> resyncProgressPercentage;
  /// A value indicating whether resync is required.
  final pulumi.Input<String> resyncRequired;
  /// The resync state.
  final pulumi.Input<String> resyncState;
  /// The resync transferred bytes from source VM to azure for all selected disks on source VM.
  final pulumi.Input<double> resyncTransferredBytes;
  /// The run-as account Id.
  final pulumi.Input<String> runAsAccountId;
  /// The tags for the seed managed disks.
  final pulumi.Input<List<UserCreatedResourceTagResponse>>? seedManagedDiskTags;
  /// The SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;
  /// The replication storage account ARM Id. This is applicable only for the blob based replication test hook.
  final pulumi.Input<String> storageAccountId;
  /// A value indicating the inplace OS Upgrade version.
  final pulumi.Input<List<String>>? supportedOSVersions;
  /// The target availability set Id.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// The target availability zone.
  final pulumi.Input<String>? targetAvailabilityZone;
  /// The target boot diagnostics storage account ARM Id.
  final pulumi.Input<String>? targetBootDiagnosticsStorageAccountId;
  /// The target generation.
  final pulumi.Input<String> targetGeneration;
  /// The target location.
  final pulumi.Input<String>? targetLocation;
  /// The tags for the target managed disks.
  final pulumi.Input<List<UserCreatedResourceTagResponse>>? targetManagedDiskTags;
  /// The target network Id.
  final pulumi.Input<String>? targetNetworkId;
  /// The tags for the target NICs.
  final pulumi.Input<List<UserCreatedResourceTagResponse>>? targetNicTags;
  /// The target proximity placement group Id.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The target resource group Id.
  final pulumi.Input<String>? targetResourceGroupId;
  /// Target VM name.
  final pulumi.Input<String>? targetVmName;
  /// The target VM security profile.
  final pulumi.Input<SecurityProfilePropertiesResponse>? targetVmSecurityProfile;
  /// The target VM size.
  final pulumi.Input<String>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<List<UserCreatedResourceTagResponse>>? targetVmTags;
  /// The test network Id.
  final pulumi.Input<String>? testNetworkId;
  /// The list of unprotected disks.
  final pulumi.Input<List<InMageRcmUnProtectedDiskDetailsResponse>>? unprotectedDisks;
  /// The network details.
  final pulumi.Input<List<InMageRcmNicDetailsResponse>>? vmNics;

  /// Creates a new [InMageRcmReplicationDetailsResponse].
  /// [agentUpgradeAttemptToVersion] The agent version to which last agent upgrade was attempted.
  /// [agentUpgradeBlockingErrorDetails] The agent upgrade blocking error information.
  /// [agentUpgradeJobId] The agent upgrade job Id.
  /// [agentUpgradeState] The agent auto upgrade state.
  /// [allocatedMemoryInMB] The allocated memory in MB.
  /// [discoveredVmDetails] The discovered VM details.
  /// [discoveryType] The type of the discovered VM.
  /// [fabricDiscoveryMachineId] The ARM Id of the discovered VM.
  /// [failoverRecoveryPointId] The recovery point Id to which the VM was failed over.
  /// [firmwareType] The firmware type.
  /// [initialReplicationProcessedBytes] The initial replication processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  /// [initialReplicationProgressHealth] The initial replication progress health.
  /// [initialReplicationProgressPercentage] The initial replication progress percentage. This is calculated based on total bytes processed for all disks in the source VM.
  /// [initialReplicationTransferredBytes] The initial replication transferred bytes from source VM to azure for all selected disks on source VM.
  /// [instanceType] Gets the Instance type.
  /// [internalIdentifier] The virtual machine internal identifier.
  /// [isAgentRegistrationSuccessfulAfterFailover] A value indicating whether agent registration was successful after failover.
  /// [isLastUpgradeSuccessful] A value indicating whether last agent upgrade was successful or not.
  /// [lastAgentUpgradeErrorDetails] The last agent upgrade error information.
  /// [lastAgentUpgradeType] The last agent upgrade type.
  /// [lastRecoveryPointId] The last recovery point Id.
  /// [lastRecoveryPointReceived] The last recovery point received time.
  /// [lastRpoCalculatedTime] The last recovery point objective calculated time.
  /// [lastRpoInSeconds] The last recovery point objective value.
  /// [licenseType] License Type of the VM to be used.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [mobilityAgentDetails] The mobility agent information.
  /// [multiVmGroupName] The multi VM group name.
  /// [osName] The OS name associated with VM.
  /// [osType] The type of the OS on the VM.
  /// [primaryNicIpAddress] The IP address of the primary network interface.
  /// [processServerId] The process server Id.
  /// [processServerName] The process server name.
  /// [processorCoreCount] The processor core count.
  /// [protectedDisks] The list of protected disks.
  /// [resyncProcessedBytes] The resync processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  /// [resyncProgressHealth] The resync progress health.
  /// [resyncProgressPercentage] The resync progress percentage. This is calculated based on total bytes processed for all disks in the source VM.
  /// [resyncRequired] A value indicating whether resync is required.
  /// [resyncState] The resync state.
  /// [resyncTransferredBytes] The resync transferred bytes from source VM to azure for all selected disks on source VM.
  /// [runAsAccountId] The run-as account Id.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [storageAccountId] The replication storage account ARM Id. This is applicable only for the blob based replication test hook.
  /// [supportedOSVersions] A value indicating the inplace OS Upgrade version.
  /// [targetAvailabilitySetId] The target availability set Id.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetBootDiagnosticsStorageAccountId] The target boot diagnostics storage account ARM Id.
  /// [targetGeneration] The target generation.
  /// [targetLocation] The target location.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNetworkId] The target network Id.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetResourceGroupId] The target resource group Id.
  /// [targetVmName] Target VM name.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmSize] The target VM size.
  /// [targetVmTags] The target VM tags.
  /// [testNetworkId] The test network Id.
  /// [unprotectedDisks] The list of unprotected disks.
  /// [vmNics] The network details.
  InMageRcmReplicationDetailsResponse({
    required this.agentUpgradeAttemptToVersion,
    this.agentUpgradeBlockingErrorDetails,
    required this.agentUpgradeJobId,
    required this.agentUpgradeState,
    required this.allocatedMemoryInMB,
    this.discoveredVmDetails,
    required this.discoveryType,
    required this.fabricDiscoveryMachineId,
    required this.failoverRecoveryPointId,
    required this.firmwareType,
    required this.initialReplicationProcessedBytes,
    required this.initialReplicationProgressHealth,
    required this.initialReplicationProgressPercentage,
    required this.initialReplicationTransferredBytes,
    required this.instanceType,
    required this.internalIdentifier,
    required this.isAgentRegistrationSuccessfulAfterFailover,
    required this.isLastUpgradeSuccessful,
    this.lastAgentUpgradeErrorDetails,
    required this.lastAgentUpgradeType,
    required this.lastRecoveryPointId,
    required this.lastRecoveryPointReceived,
    required this.lastRpoCalculatedTime,
    required this.lastRpoInSeconds,
    this.licenseType,
    this.linuxLicenseType,
    this.mobilityAgentDetails,
    required this.multiVmGroupName,
    this.osName,
    required this.osType,
    required this.primaryNicIpAddress,
    required this.processServerId,
    required this.processServerName,
    required this.processorCoreCount,
    this.protectedDisks,
    required this.resyncProcessedBytes,
    required this.resyncProgressHealth,
    required this.resyncProgressPercentage,
    required this.resyncRequired,
    required this.resyncState,
    required this.resyncTransferredBytes,
    required this.runAsAccountId,
    this.seedManagedDiskTags,
    this.sqlServerLicenseType,
    required this.storageAccountId,
    this.supportedOSVersions,
    this.targetAvailabilitySetId,
    this.targetAvailabilityZone,
    this.targetBootDiagnosticsStorageAccountId,
    required this.targetGeneration,
    this.targetLocation,
    this.targetManagedDiskTags,
    this.targetNetworkId,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    this.targetResourceGroupId,
    this.targetVmName,
    this.targetVmSecurityProfile,
    this.targetVmSize,
    this.targetVmTags,
    this.testNetworkId,
    this.unprotectedDisks,
    this.vmNics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUpgradeAttemptToVersion': agentUpgradeAttemptToVersion,
      'agentUpgradeBlockingErrorDetails': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmAgentUpgradeBlockingErrorDetailsResponse>, List<Map<String, dynamic>>>(agentUpgradeBlockingErrorDetails, (value) => pulumi.Input.encodeList<InMageRcmAgentUpgradeBlockingErrorDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentUpgradeJobId': agentUpgradeJobId,
      'agentUpgradeState': agentUpgradeState,
      'allocatedMemoryInMB': allocatedMemoryInMB,
      'discoveredVmDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmDiscoveredProtectedVmDetailsResponse, Map<String, dynamic>>(discoveredVmDetails, (value) => value.toMap()),
      'discoveryType': discoveryType,
      'fabricDiscoveryMachineId': fabricDiscoveryMachineId,
      'failoverRecoveryPointId': failoverRecoveryPointId,
      'firmwareType': firmwareType,
      'initialReplicationProcessedBytes': initialReplicationProcessedBytes,
      'initialReplicationProgressHealth': initialReplicationProgressHealth,
      'initialReplicationProgressPercentage': initialReplicationProgressPercentage,
      'initialReplicationTransferredBytes': initialReplicationTransferredBytes,
      'instanceType': instanceType,
      'internalIdentifier': internalIdentifier,
      'isAgentRegistrationSuccessfulAfterFailover': isAgentRegistrationSuccessfulAfterFailover,
      'isLastUpgradeSuccessful': isLastUpgradeSuccessful,
      'lastAgentUpgradeErrorDetails': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmLastAgentUpgradeErrorDetailsResponse>, List<Map<String, dynamic>>>(lastAgentUpgradeErrorDetails, (value) => pulumi.Input.encodeList<InMageRcmLastAgentUpgradeErrorDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastAgentUpgradeType': lastAgentUpgradeType,
      'lastRecoveryPointId': lastRecoveryPointId,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'lastRpoCalculatedTime': lastRpoCalculatedTime,
      'lastRpoInSeconds': lastRpoInSeconds,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'mobilityAgentDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmMobilityAgentDetailsResponse, Map<String, dynamic>>(mobilityAgentDetails, (value) => value.toMap()),
      'multiVmGroupName': multiVmGroupName,
      'osName': ?osName,
      'osType': osType,
      'primaryNicIpAddress': primaryNicIpAddress,
      'processServerId': processServerId,
      'processServerName': processServerName,
      'processorCoreCount': processorCoreCount,
      'protectedDisks': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmProtectedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedDisks, (value) => pulumi.Input.encodeList<InMageRcmProtectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resyncProcessedBytes': resyncProcessedBytes,
      'resyncProgressHealth': resyncProgressHealth,
      'resyncProgressPercentage': resyncProgressPercentage,
      'resyncRequired': resyncRequired,
      'resyncState': resyncState,
      'resyncTransferredBytes': resyncTransferredBytes,
      'runAsAccountId': runAsAccountId,
      'seedManagedDiskTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTagResponse>, List<Map<String, dynamic>>>(seedManagedDiskTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'storageAccountId': storageAccountId,
      'supportedOSVersions': ?supportedOSVersions,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetBootDiagnosticsStorageAccountId': ?targetBootDiagnosticsStorageAccountId,
      'targetGeneration': targetGeneration,
      'targetLocation': ?targetLocation,
      'targetManagedDiskTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTagResponse>, List<Map<String, dynamic>>>(targetManagedDiskTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetNetworkId': ?targetNetworkId,
      'targetNicTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTagResponse>, List<Map<String, dynamic>>>(targetNicTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetResourceGroupId': ?targetResourceGroupId,
      'targetVmName': ?targetVmName,
      'targetVmSecurityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfilePropertiesResponse, Map<String, dynamic>>(targetVmSecurityProfile, (value) => value.toMap()),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTagResponse>, List<Map<String, dynamic>>>(targetVmTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testNetworkId': ?testNetworkId,
      'unprotectedDisks': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmUnProtectedDiskDetailsResponse>, List<Map<String, dynamic>>>(unprotectedDisks, (value) => pulumi.Input.encodeList<InMageRcmUnProtectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<InMageRcmNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InMageRcmReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmReplicationDetailsResponse(
      agentUpgradeAttemptToVersion: (map['agentUpgradeAttemptToVersion'] as String).input(),
      agentUpgradeBlockingErrorDetails: map['agentUpgradeBlockingErrorDetails'] == null ? null : (pulumi.Input.decodeList<InMageRcmAgentUpgradeBlockingErrorDetailsResponse>(map['agentUpgradeBlockingErrorDetails']!, (value) => InMageRcmAgentUpgradeBlockingErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      agentUpgradeJobId: (map['agentUpgradeJobId'] as String).input(),
      agentUpgradeState: (map['agentUpgradeState'] as String).input(),
      allocatedMemoryInMB: (map['allocatedMemoryInMB'] as double).input(),
      discoveredVmDetails: map['discoveredVmDetails'] == null ? null : (InMageRcmDiscoveredProtectedVmDetailsResponse.fromMap((map['discoveredVmDetails']! as Map).cast<String, dynamic>())).input(),
      discoveryType: (map['discoveryType'] as String).input(),
      fabricDiscoveryMachineId: (map['fabricDiscoveryMachineId'] as String).input(),
      failoverRecoveryPointId: (map['failoverRecoveryPointId'] as String).input(),
      firmwareType: (map['firmwareType'] as String).input(),
      initialReplicationProcessedBytes: (map['initialReplicationProcessedBytes'] as double).input(),
      initialReplicationProgressHealth: (map['initialReplicationProgressHealth'] as String).input(),
      initialReplicationProgressPercentage: (map['initialReplicationProgressPercentage'] as int).input(),
      initialReplicationTransferredBytes: (map['initialReplicationTransferredBytes'] as double).input(),
      instanceType: (map['instanceType'] as String).input(),
      internalIdentifier: (map['internalIdentifier'] as String).input(),
      isAgentRegistrationSuccessfulAfterFailover: (map['isAgentRegistrationSuccessfulAfterFailover'] as bool).input(),
      isLastUpgradeSuccessful: (map['isLastUpgradeSuccessful'] as String).input(),
      lastAgentUpgradeErrorDetails: map['lastAgentUpgradeErrorDetails'] == null ? null : (pulumi.Input.decodeList<InMageRcmLastAgentUpgradeErrorDetailsResponse>(map['lastAgentUpgradeErrorDetails']!, (value) => InMageRcmLastAgentUpgradeErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastAgentUpgradeType: (map['lastAgentUpgradeType'] as String).input(),
      lastRecoveryPointId: (map['lastRecoveryPointId'] as String).input(),
      lastRecoveryPointReceived: (map['lastRecoveryPointReceived'] as String).input(),
      lastRpoCalculatedTime: (map['lastRpoCalculatedTime'] as String).input(),
      lastRpoInSeconds: (map['lastRpoInSeconds'] as double).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      linuxLicenseType: map['linuxLicenseType'] == null ? null : (map['linuxLicenseType']! as String).input(),
      mobilityAgentDetails: map['mobilityAgentDetails'] == null ? null : (InMageRcmMobilityAgentDetailsResponse.fromMap((map['mobilityAgentDetails']! as Map).cast<String, dynamic>())).input(),
      multiVmGroupName: (map['multiVmGroupName'] as String).input(),
      osName: map['osName'] == null ? null : (map['osName']! as String).input(),
      osType: (map['osType'] as String).input(),
      primaryNicIpAddress: (map['primaryNicIpAddress'] as String).input(),
      processServerId: (map['processServerId'] as String).input(),
      processServerName: (map['processServerName'] as String).input(),
      processorCoreCount: (map['processorCoreCount'] as int).input(),
      protectedDisks: map['protectedDisks'] == null ? null : (pulumi.Input.decodeList<InMageRcmProtectedDiskDetailsResponse>(map['protectedDisks']!, (value) => InMageRcmProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resyncProcessedBytes: (map['resyncProcessedBytes'] as double).input(),
      resyncProgressHealth: (map['resyncProgressHealth'] as String).input(),
      resyncProgressPercentage: (map['resyncProgressPercentage'] as int).input(),
      resyncRequired: (map['resyncRequired'] as String).input(),
      resyncState: (map['resyncState'] as String).input(),
      resyncTransferredBytes: (map['resyncTransferredBytes'] as double).input(),
      runAsAccountId: (map['runAsAccountId'] as String).input(),
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['seedManagedDiskTags']!, (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType']! as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      supportedOSVersions: map['supportedOSVersions'] == null ? null : ((map['supportedOSVersions']! as List).cast<String>()).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId']! as String).input(),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : (map['targetAvailabilityZone']! as String).input(),
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : (map['targetBootDiagnosticsStorageAccountId']! as String).input(),
      targetGeneration: (map['targetGeneration'] as String).input(),
      targetLocation: map['targetLocation'] == null ? null : (map['targetLocation']! as String).input(),
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['targetManagedDiskTags']!, (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetNetworkId: map['targetNetworkId'] == null ? null : (map['targetNetworkId']! as String).input(),
      targetNicTags: map['targetNicTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['targetNicTags']!, (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId']! as String).input(),
      targetResourceGroupId: map['targetResourceGroupId'] == null ? null : (map['targetResourceGroupId']! as String).input(),
      targetVmName: map['targetVmName'] == null ? null : (map['targetVmName']! as String).input(),
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : (SecurityProfilePropertiesResponse.fromMap((map['targetVmSecurityProfile']! as Map).cast<String, dynamic>())).input(),
      targetVmSize: map['targetVmSize'] == null ? null : (map['targetVmSize']! as String).input(),
      targetVmTags: map['targetVmTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['targetVmTags']!, (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testNetworkId: map['testNetworkId'] == null ? null : (map['testNetworkId']! as String).input(),
      unprotectedDisks: map['unprotectedDisks'] == null ? null : (pulumi.Input.decodeList<InMageRcmUnProtectedDiskDetailsResponse>(map['unprotectedDisks']!, (value) => InMageRcmUnProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmNics: map['vmNics'] == null ? null : (pulumi.Input.decodeList<InMageRcmNicDetailsResponse>(map['vmNics']!, (value) => InMageRcmNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

