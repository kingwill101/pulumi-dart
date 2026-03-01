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
  final String agentUpgradeAttemptToVersion;
  /// The agent upgrade blocking error information.
  final List<InMageRcmAgentUpgradeBlockingErrorDetailsResponse>? agentUpgradeBlockingErrorDetails;
  /// The agent upgrade job Id.
  final String agentUpgradeJobId;
  /// The agent auto upgrade state.
  final String agentUpgradeState;
  /// The allocated memory in MB.
  final double allocatedMemoryInMB;
  /// The discovered VM details.
  final InMageRcmDiscoveredProtectedVmDetailsResponse? discoveredVmDetails;
  /// The type of the discovered VM.
  final String discoveryType;
  /// The ARM Id of the discovered VM.
  final String fabricDiscoveryMachineId;
  /// The recovery point Id to which the VM was failed over.
  final String failoverRecoveryPointId;
  /// The firmware type.
  final String firmwareType;
  /// The initial replication processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final double initialReplicationProcessedBytes;
  /// The initial replication progress health.
  final String initialReplicationProgressHealth;
  /// The initial replication progress percentage. This is calculated based on total bytes processed for all disks in the source VM.
  final int initialReplicationProgressPercentage;
  /// The initial replication transferred bytes from source VM to azure for all selected disks on source VM.
  final double initialReplicationTransferredBytes;
  /// Gets the Instance type.
  /// Expected value is 'InMageRcm'.
  final String instanceType;
  /// The virtual machine internal identifier.
  final String internalIdentifier;
  /// A value indicating whether agent registration was successful after failover.
  final bool isAgentRegistrationSuccessfulAfterFailover;
  /// A value indicating whether last agent upgrade was successful or not.
  final String isLastUpgradeSuccessful;
  /// The last agent upgrade error information.
  final List<InMageRcmLastAgentUpgradeErrorDetailsResponse>? lastAgentUpgradeErrorDetails;
  /// The last agent upgrade type.
  final String lastAgentUpgradeType;
  /// The last recovery point Id.
  final String lastRecoveryPointId;
  /// The last recovery point received time.
  final String lastRecoveryPointReceived;
  /// The last recovery point objective calculated time.
  final String lastRpoCalculatedTime;
  /// The last recovery point objective value.
  final double lastRpoInSeconds;
  /// License Type of the VM to be used.
  final String? licenseType;
  /// The license type for Linux VM's.
  final String? linuxLicenseType;
  /// The mobility agent information.
  final InMageRcmMobilityAgentDetailsResponse? mobilityAgentDetails;
  /// The multi VM group name.
  final String multiVmGroupName;
  /// The OS name associated with VM.
  final String? osName;
  /// The type of the OS on the VM.
  final String osType;
  /// The IP address of the primary network interface.
  final String primaryNicIpAddress;
  /// The process server Id.
  final String processServerId;
  /// The process server name.
  final String processServerName;
  /// The processor core count.
  final int processorCoreCount;
  /// The list of protected disks.
  final List<InMageRcmProtectedDiskDetailsResponse>? protectedDisks;
  /// The resync processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final double resyncProcessedBytes;
  /// The resync progress health.
  final String resyncProgressHealth;
  /// The resync progress percentage. This is calculated based on total bytes processed for all disks in the source VM.
  final int resyncProgressPercentage;
  /// A value indicating whether resync is required.
  final String resyncRequired;
  /// The resync state.
  final String resyncState;
  /// The resync transferred bytes from source VM to azure for all selected disks on source VM.
  final double resyncTransferredBytes;
  /// The run-as account Id.
  final String runAsAccountId;
  /// The tags for the seed managed disks.
  final List<UserCreatedResourceTagResponse>? seedManagedDiskTags;
  /// The SQL Server license type.
  final String? sqlServerLicenseType;
  /// The replication storage account ARM Id. This is applicable only for the blob based replication test hook.
  final String storageAccountId;
  /// A value indicating the inplace OS Upgrade version.
  final List<String>? supportedOSVersions;
  /// The target availability set Id.
  final String? targetAvailabilitySetId;
  /// The target availability zone.
  final String? targetAvailabilityZone;
  /// The target boot diagnostics storage account ARM Id.
  final String? targetBootDiagnosticsStorageAccountId;
  /// The target generation.
  final String targetGeneration;
  /// The target location.
  final String? targetLocation;
  /// The tags for the target managed disks.
  final List<UserCreatedResourceTagResponse>? targetManagedDiskTags;
  /// The target network Id.
  final String? targetNetworkId;
  /// The tags for the target NICs.
  final List<UserCreatedResourceTagResponse>? targetNicTags;
  /// The target proximity placement group Id.
  final String? targetProximityPlacementGroupId;
  /// The target resource group Id.
  final String? targetResourceGroupId;
  /// Target VM name.
  final String? targetVmName;
  /// The target VM security profile.
  final SecurityProfilePropertiesResponse? targetVmSecurityProfile;
  /// The target VM size.
  final String? targetVmSize;
  /// The target VM tags.
  final List<UserCreatedResourceTagResponse>? targetVmTags;
  /// The test network Id.
  final String? testNetworkId;
  /// The list of unprotected disks.
  final List<InMageRcmUnProtectedDiskDetailsResponse>? unprotectedDisks;
  /// The network details.
  final List<InMageRcmNicDetailsResponse>? vmNics;

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
      'agentUpgradeBlockingErrorDetails': ?agentUpgradeBlockingErrorDetails == null ? null : pulumi.Input.encodeList<InMageRcmAgentUpgradeBlockingErrorDetailsResponse, Map<String, dynamic>>(agentUpgradeBlockingErrorDetails!, (value) => value.toMap()),
      'agentUpgradeJobId': agentUpgradeJobId,
      'agentUpgradeState': agentUpgradeState,
      'allocatedMemoryInMB': allocatedMemoryInMB,
      'discoveredVmDetails': ?discoveredVmDetails == null ? null : discoveredVmDetails!.toMap(),
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
      'lastAgentUpgradeErrorDetails': ?lastAgentUpgradeErrorDetails == null ? null : pulumi.Input.encodeList<InMageRcmLastAgentUpgradeErrorDetailsResponse, Map<String, dynamic>>(lastAgentUpgradeErrorDetails!, (value) => value.toMap()),
      'lastAgentUpgradeType': lastAgentUpgradeType,
      'lastRecoveryPointId': lastRecoveryPointId,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'lastRpoCalculatedTime': lastRpoCalculatedTime,
      'lastRpoInSeconds': lastRpoInSeconds,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'mobilityAgentDetails': ?mobilityAgentDetails == null ? null : mobilityAgentDetails!.toMap(),
      'multiVmGroupName': multiVmGroupName,
      'osName': ?osName,
      'osType': osType,
      'primaryNicIpAddress': primaryNicIpAddress,
      'processServerId': processServerId,
      'processServerName': processServerName,
      'processorCoreCount': processorCoreCount,
      'protectedDisks': ?protectedDisks == null ? null : pulumi.Input.encodeList<InMageRcmProtectedDiskDetailsResponse, Map<String, dynamic>>(protectedDisks!, (value) => value.toMap()),
      'resyncProcessedBytes': resyncProcessedBytes,
      'resyncProgressHealth': resyncProgressHealth,
      'resyncProgressPercentage': resyncProgressPercentage,
      'resyncRequired': resyncRequired,
      'resyncState': resyncState,
      'resyncTransferredBytes': resyncTransferredBytes,
      'runAsAccountId': runAsAccountId,
      'seedManagedDiskTags': ?seedManagedDiskTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(seedManagedDiskTags!, (value) => value.toMap()),
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'storageAccountId': storageAccountId,
      'supportedOSVersions': ?supportedOSVersions,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetBootDiagnosticsStorageAccountId': ?targetBootDiagnosticsStorageAccountId,
      'targetGeneration': targetGeneration,
      'targetLocation': ?targetLocation,
      'targetManagedDiskTags': ?targetManagedDiskTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(targetManagedDiskTags!, (value) => value.toMap()),
      'targetNetworkId': ?targetNetworkId,
      'targetNicTags': ?targetNicTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(targetNicTags!, (value) => value.toMap()),
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetResourceGroupId': ?targetResourceGroupId,
      'targetVmName': ?targetVmName,
      'targetVmSecurityProfile': ?targetVmSecurityProfile == null ? null : targetVmSecurityProfile!.toMap(),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?targetVmTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTagResponse, Map<String, dynamic>>(targetVmTags!, (value) => value.toMap()),
      'testNetworkId': ?testNetworkId,
      'unprotectedDisks': ?unprotectedDisks == null ? null : pulumi.Input.encodeList<InMageRcmUnProtectedDiskDetailsResponse, Map<String, dynamic>>(unprotectedDisks!, (value) => value.toMap()),
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<InMageRcmNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
    };
  }

  factory InMageRcmReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmReplicationDetailsResponse(
      agentUpgradeAttemptToVersion: map['agentUpgradeAttemptToVersion'] as String,
      agentUpgradeBlockingErrorDetails: map['agentUpgradeBlockingErrorDetails'] == null ? null : pulumi.Input.decodeList<InMageRcmAgentUpgradeBlockingErrorDetailsResponse>(map['agentUpgradeBlockingErrorDetails'], (value) => InMageRcmAgentUpgradeBlockingErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      agentUpgradeJobId: map['agentUpgradeJobId'] as String,
      agentUpgradeState: map['agentUpgradeState'] as String,
      allocatedMemoryInMB: map['allocatedMemoryInMB'] as double,
      discoveredVmDetails: map['discoveredVmDetails'] == null ? null : InMageRcmDiscoveredProtectedVmDetailsResponse.fromMap((map['discoveredVmDetails'] as Map).cast<String, dynamic>()),
      discoveryType: map['discoveryType'] as String,
      fabricDiscoveryMachineId: map['fabricDiscoveryMachineId'] as String,
      failoverRecoveryPointId: map['failoverRecoveryPointId'] as String,
      firmwareType: map['firmwareType'] as String,
      initialReplicationProcessedBytes: map['initialReplicationProcessedBytes'] as double,
      initialReplicationProgressHealth: map['initialReplicationProgressHealth'] as String,
      initialReplicationProgressPercentage: map['initialReplicationProgressPercentage'] as int,
      initialReplicationTransferredBytes: map['initialReplicationTransferredBytes'] as double,
      instanceType: map['instanceType'] as String,
      internalIdentifier: map['internalIdentifier'] as String,
      isAgentRegistrationSuccessfulAfterFailover: map['isAgentRegistrationSuccessfulAfterFailover'] as bool,
      isLastUpgradeSuccessful: map['isLastUpgradeSuccessful'] as String,
      lastAgentUpgradeErrorDetails: map['lastAgentUpgradeErrorDetails'] == null ? null : pulumi.Input.decodeList<InMageRcmLastAgentUpgradeErrorDetailsResponse>(map['lastAgentUpgradeErrorDetails'], (value) => InMageRcmLastAgentUpgradeErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastAgentUpgradeType: map['lastAgentUpgradeType'] as String,
      lastRecoveryPointId: map['lastRecoveryPointId'] as String,
      lastRecoveryPointReceived: map['lastRecoveryPointReceived'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] as String,
      lastRpoInSeconds: map['lastRpoInSeconds'] as double,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      linuxLicenseType: map['linuxLicenseType'] == null ? null : map['linuxLicenseType'] as String,
      mobilityAgentDetails: map['mobilityAgentDetails'] == null ? null : InMageRcmMobilityAgentDetailsResponse.fromMap((map['mobilityAgentDetails'] as Map).cast<String, dynamic>()),
      multiVmGroupName: map['multiVmGroupName'] as String,
      osName: map['osName'] == null ? null : map['osName'] as String,
      osType: map['osType'] as String,
      primaryNicIpAddress: map['primaryNicIpAddress'] as String,
      processServerId: map['processServerId'] as String,
      processServerName: map['processServerName'] as String,
      processorCoreCount: map['processorCoreCount'] as int,
      protectedDisks: map['protectedDisks'] == null ? null : pulumi.Input.decodeList<InMageRcmProtectedDiskDetailsResponse>(map['protectedDisks'], (value) => InMageRcmProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      resyncProcessedBytes: map['resyncProcessedBytes'] as double,
      resyncProgressHealth: map['resyncProgressHealth'] as String,
      resyncProgressPercentage: map['resyncProgressPercentage'] as int,
      resyncRequired: map['resyncRequired'] as String,
      resyncState: map['resyncState'] as String,
      resyncTransferredBytes: map['resyncTransferredBytes'] as double,
      runAsAccountId: map['runAsAccountId'] as String,
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['seedManagedDiskTags'], (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType'] as String,
      storageAccountId: map['storageAccountId'] as String,
      supportedOSVersions: map['supportedOSVersions'] == null ? null : (map['supportedOSVersions'] as List).cast<String>(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : map['targetAvailabilitySetId'] as String,
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : map['targetBootDiagnosticsStorageAccountId'] as String,
      targetGeneration: map['targetGeneration'] as String,
      targetLocation: map['targetLocation'] == null ? null : map['targetLocation'] as String,
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['targetManagedDiskTags'], (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetNetworkId: map['targetNetworkId'] == null ? null : map['targetNetworkId'] as String,
      targetNicTags: map['targetNicTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['targetNicTags'], (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : map['targetProximityPlacementGroupId'] as String,
      targetResourceGroupId: map['targetResourceGroupId'] == null ? null : map['targetResourceGroupId'] as String,
      targetVmName: map['targetVmName'] == null ? null : map['targetVmName'] as String,
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : SecurityProfilePropertiesResponse.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>()),
      targetVmSize: map['targetVmSize'] == null ? null : map['targetVmSize'] as String,
      targetVmTags: map['targetVmTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTagResponse>(map['targetVmTags'], (value) => UserCreatedResourceTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      testNetworkId: map['testNetworkId'] == null ? null : map['testNetworkId'] as String,
      unprotectedDisks: map['unprotectedDisks'] == null ? null : pulumi.Input.decodeList<InMageRcmUnProtectedDiskDetailsResponse>(map['unprotectedDisks'], (value) => InMageRcmUnProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<InMageRcmNicDetailsResponse>(map['vmNics'], (value) => InMageRcmNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

