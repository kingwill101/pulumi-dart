// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_rcm_failback_discovered_protected_vm_details_response.dart';
import 'in_mage_rcm_failback_mobility_agent_details_response.dart';
import 'in_mage_rcm_failback_nic_details_response.dart';
import 'in_mage_rcm_failback_protected_disk_details_response.dart';

/// InMageRcmFailback provider specific details.
class InMageRcmFailbackReplicationDetailsResponse {
  /// The ARM Id of the azure VM.
  final String azureVirtualMachineId;
  /// The discovered VM information.
  final InMageRcmFailbackDiscoveredProtectedVmDetailsResponse? discoveredVmDetails;
  /// The initial replication processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final double initialReplicationProcessedBytes;
  /// The initial replication progress health.
  final String initialReplicationProgressHealth;
  /// The initial replication progress percentage.
  final int initialReplicationProgressPercentage;
  /// The initial replication transferred bytes from source VM to target for all selected disks on source VM.
  final double initialReplicationTransferredBytes;
  /// Gets the Instance type.
  /// Expected value is 'InMageRcmFailback'.
  final String instanceType;
  /// The virtual machine internal identifier.
  final String internalIdentifier;
  /// A value indicating whether agent registration was successful after failover.
  final bool isAgentRegistrationSuccessfulAfterFailover;
  /// The last planned failover start time.
  final String lastPlannedFailoverStartTime;
  /// The last planned failover status.
  final String lastPlannedFailoverStatus;
  /// The policy friendly name used by the forward replication.
  final String lastUsedPolicyFriendlyName;
  /// The policy Id used by the forward replication.
  final String lastUsedPolicyId;
  /// The log storage account ARM Id.
  final String logStorageAccountId;
  /// The mobility agent information.
  final InMageRcmFailbackMobilityAgentDetailsResponse? mobilityAgentDetails;
  /// The multi VM group name.
  final String multiVmGroupName;
  /// The type of the OS on the VM.
  final String osType;
  /// The list of protected disks.
  final List<InMageRcmFailbackProtectedDiskDetailsResponse>? protectedDisks;
  /// The reprotect agent Id.
  final String reprotectAgentId;
  /// The reprotect agent name.
  final String reprotectAgentName;
  /// The resync processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final double resyncProcessedBytes;
  /// The resync progress health.
  final String resyncProgressHealth;
  /// The resync progress percentage.
  final int resyncProgressPercentage;
  /// A value indicating whether resync is required.
  final String resyncRequired;
  /// The resync state.
  final String resyncState;
  /// The resync transferred bytes from source VM to target for all selected disks on source VM.
  final double resyncTransferredBytes;
  /// The target datastore name.
  final String targetDataStoreName;
  /// The target VM name.
  final String targetVmName;
  /// The target vCenter Id.
  final String targetvCenterId;
  /// The network details.
  final List<InMageRcmFailbackNicDetailsResponse>? vmNics;

  /// Creates a new [InMageRcmFailbackReplicationDetailsResponse].
  /// [azureVirtualMachineId] The ARM Id of the azure VM.
  /// [discoveredVmDetails] The discovered VM information.
  /// [initialReplicationProcessedBytes] The initial replication processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  /// [initialReplicationProgressHealth] The initial replication progress health.
  /// [initialReplicationProgressPercentage] The initial replication progress percentage.
  /// [initialReplicationTransferredBytes] The initial replication transferred bytes from source VM to target for all selected disks on source VM.
  /// [instanceType] Gets the Instance type.
  /// [internalIdentifier] The virtual machine internal identifier.
  /// [isAgentRegistrationSuccessfulAfterFailover] A value indicating whether agent registration was successful after failover.
  /// [lastPlannedFailoverStartTime] The last planned failover start time.
  /// [lastPlannedFailoverStatus] The last planned failover status.
  /// [lastUsedPolicyFriendlyName] The policy friendly name used by the forward replication.
  /// [lastUsedPolicyId] The policy Id used by the forward replication.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [mobilityAgentDetails] The mobility agent information.
  /// [multiVmGroupName] The multi VM group name.
  /// [osType] The type of the OS on the VM.
  /// [protectedDisks] The list of protected disks.
  /// [reprotectAgentId] The reprotect agent Id.
  /// [reprotectAgentName] The reprotect agent name.
  /// [resyncProcessedBytes] The resync processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  /// [resyncProgressHealth] The resync progress health.
  /// [resyncProgressPercentage] The resync progress percentage.
  /// [resyncRequired] A value indicating whether resync is required.
  /// [resyncState] The resync state.
  /// [resyncTransferredBytes] The resync transferred bytes from source VM to target for all selected disks on source VM.
  /// [targetDataStoreName] The target datastore name.
  /// [targetVmName] The target VM name.
  /// [targetvCenterId] The target vCenter Id.
  /// [vmNics] The network details.
  InMageRcmFailbackReplicationDetailsResponse({
    required this.azureVirtualMachineId,
    this.discoveredVmDetails,
    required this.initialReplicationProcessedBytes,
    required this.initialReplicationProgressHealth,
    required this.initialReplicationProgressPercentage,
    required this.initialReplicationTransferredBytes,
    required this.instanceType,
    required this.internalIdentifier,
    required this.isAgentRegistrationSuccessfulAfterFailover,
    required this.lastPlannedFailoverStartTime,
    required this.lastPlannedFailoverStatus,
    required this.lastUsedPolicyFriendlyName,
    required this.lastUsedPolicyId,
    required this.logStorageAccountId,
    this.mobilityAgentDetails,
    required this.multiVmGroupName,
    required this.osType,
    this.protectedDisks,
    required this.reprotectAgentId,
    required this.reprotectAgentName,
    required this.resyncProcessedBytes,
    required this.resyncProgressHealth,
    required this.resyncProgressPercentage,
    required this.resyncRequired,
    required this.resyncState,
    required this.resyncTransferredBytes,
    required this.targetDataStoreName,
    required this.targetVmName,
    required this.targetvCenterId,
    this.vmNics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureVirtualMachineId': azureVirtualMachineId,
      'discoveredVmDetails': ?discoveredVmDetails == null ? null : discoveredVmDetails!.toMap(),
      'initialReplicationProcessedBytes': initialReplicationProcessedBytes,
      'initialReplicationProgressHealth': initialReplicationProgressHealth,
      'initialReplicationProgressPercentage': initialReplicationProgressPercentage,
      'initialReplicationTransferredBytes': initialReplicationTransferredBytes,
      'instanceType': instanceType,
      'internalIdentifier': internalIdentifier,
      'isAgentRegistrationSuccessfulAfterFailover': isAgentRegistrationSuccessfulAfterFailover,
      'lastPlannedFailoverStartTime': lastPlannedFailoverStartTime,
      'lastPlannedFailoverStatus': lastPlannedFailoverStatus,
      'lastUsedPolicyFriendlyName': lastUsedPolicyFriendlyName,
      'lastUsedPolicyId': lastUsedPolicyId,
      'logStorageAccountId': logStorageAccountId,
      'mobilityAgentDetails': ?mobilityAgentDetails == null ? null : mobilityAgentDetails!.toMap(),
      'multiVmGroupName': multiVmGroupName,
      'osType': osType,
      'protectedDisks': ?protectedDisks == null ? null : pulumi.Input.encodeList<InMageRcmFailbackProtectedDiskDetailsResponse, Map<String, dynamic>>(protectedDisks!, (value) => value.toMap()),
      'reprotectAgentId': reprotectAgentId,
      'reprotectAgentName': reprotectAgentName,
      'resyncProcessedBytes': resyncProcessedBytes,
      'resyncProgressHealth': resyncProgressHealth,
      'resyncProgressPercentage': resyncProgressPercentage,
      'resyncRequired': resyncRequired,
      'resyncState': resyncState,
      'resyncTransferredBytes': resyncTransferredBytes,
      'targetDataStoreName': targetDataStoreName,
      'targetVmName': targetVmName,
      'targetvCenterId': targetvCenterId,
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<InMageRcmFailbackNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
    };
  }

  factory InMageRcmFailbackReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackReplicationDetailsResponse(
      azureVirtualMachineId: map['azureVirtualMachineId'] as String,
      discoveredVmDetails: map['discoveredVmDetails'] == null ? null : InMageRcmFailbackDiscoveredProtectedVmDetailsResponse.fromMap((map['discoveredVmDetails'] as Map).cast<String, dynamic>()),
      initialReplicationProcessedBytes: map['initialReplicationProcessedBytes'] as double,
      initialReplicationProgressHealth: map['initialReplicationProgressHealth'] as String,
      initialReplicationProgressPercentage: map['initialReplicationProgressPercentage'] as int,
      initialReplicationTransferredBytes: map['initialReplicationTransferredBytes'] as double,
      instanceType: map['instanceType'] as String,
      internalIdentifier: map['internalIdentifier'] as String,
      isAgentRegistrationSuccessfulAfterFailover: map['isAgentRegistrationSuccessfulAfterFailover'] as bool,
      lastPlannedFailoverStartTime: map['lastPlannedFailoverStartTime'] as String,
      lastPlannedFailoverStatus: map['lastPlannedFailoverStatus'] as String,
      lastUsedPolicyFriendlyName: map['lastUsedPolicyFriendlyName'] as String,
      lastUsedPolicyId: map['lastUsedPolicyId'] as String,
      logStorageAccountId: map['logStorageAccountId'] as String,
      mobilityAgentDetails: map['mobilityAgentDetails'] == null ? null : InMageRcmFailbackMobilityAgentDetailsResponse.fromMap((map['mobilityAgentDetails'] as Map).cast<String, dynamic>()),
      multiVmGroupName: map['multiVmGroupName'] as String,
      osType: map['osType'] as String,
      protectedDisks: map['protectedDisks'] == null ? null : pulumi.Input.decodeList<InMageRcmFailbackProtectedDiskDetailsResponse>(map['protectedDisks'], (value) => InMageRcmFailbackProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      reprotectAgentId: map['reprotectAgentId'] as String,
      reprotectAgentName: map['reprotectAgentName'] as String,
      resyncProcessedBytes: map['resyncProcessedBytes'] as double,
      resyncProgressHealth: map['resyncProgressHealth'] as String,
      resyncProgressPercentage: map['resyncProgressPercentage'] as int,
      resyncRequired: map['resyncRequired'] as String,
      resyncState: map['resyncState'] as String,
      resyncTransferredBytes: map['resyncTransferredBytes'] as double,
      targetDataStoreName: map['targetDataStoreName'] as String,
      targetVmName: map['targetVmName'] as String,
      targetvCenterId: map['targetvCenterId'] as String,
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<InMageRcmFailbackNicDetailsResponse>(map['vmNics'], (value) => InMageRcmFailbackNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

