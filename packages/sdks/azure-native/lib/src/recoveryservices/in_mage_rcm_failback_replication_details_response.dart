// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_rcm_failback_discovered_protected_vm_details_response.dart';
import 'in_mage_rcm_failback_mobility_agent_details_response.dart';
import 'in_mage_rcm_failback_nic_details_response.dart';
import 'in_mage_rcm_failback_protected_disk_details_response.dart';

/// InMageRcmFailback provider specific details.
class InMageRcmFailbackReplicationDetailsResponse {
  /// The ARM Id of the azure VM.
  final pulumi.Input<String> azureVirtualMachineId;
  /// The discovered VM information.
  final pulumi.Input<InMageRcmFailbackDiscoveredProtectedVmDetailsResponse>? discoveredVmDetails;
  /// The initial replication processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final pulumi.Input<double> initialReplicationProcessedBytes;
  /// The initial replication progress health.
  final pulumi.Input<String> initialReplicationProgressHealth;
  /// The initial replication progress percentage.
  final pulumi.Input<int> initialReplicationProgressPercentage;
  /// The initial replication transferred bytes from source VM to target for all selected disks on source VM.
  final pulumi.Input<double> initialReplicationTransferredBytes;
  /// Gets the Instance type.
  /// Expected value is 'InMageRcmFailback'.
  final pulumi.Input<String> instanceType;
  /// The virtual machine internal identifier.
  final pulumi.Input<String> internalIdentifier;
  /// A value indicating whether agent registration was successful after failover.
  final pulumi.Input<bool> isAgentRegistrationSuccessfulAfterFailover;
  /// The last planned failover start time.
  final pulumi.Input<String> lastPlannedFailoverStartTime;
  /// The last planned failover status.
  final pulumi.Input<String> lastPlannedFailoverStatus;
  /// The policy friendly name used by the forward replication.
  final pulumi.Input<String> lastUsedPolicyFriendlyName;
  /// The policy Id used by the forward replication.
  final pulumi.Input<String> lastUsedPolicyId;
  /// The log storage account ARM Id.
  final pulumi.Input<String> logStorageAccountId;
  /// The mobility agent information.
  final pulumi.Input<InMageRcmFailbackMobilityAgentDetailsResponse>? mobilityAgentDetails;
  /// The multi VM group name.
  final pulumi.Input<String> multiVmGroupName;
  /// The type of the OS on the VM.
  final pulumi.Input<String> osType;
  /// The list of protected disks.
  final pulumi.Input<List<InMageRcmFailbackProtectedDiskDetailsResponse>>? protectedDisks;
  /// The reprotect agent Id.
  final pulumi.Input<String> reprotectAgentId;
  /// The reprotect agent name.
  final pulumi.Input<String> reprotectAgentName;
  /// The resync processed bytes. This includes sum of total bytes transferred and matched bytes on all selected disks in source VM.
  final pulumi.Input<double> resyncProcessedBytes;
  /// The resync progress health.
  final pulumi.Input<String> resyncProgressHealth;
  /// The resync progress percentage.
  final pulumi.Input<int> resyncProgressPercentage;
  /// A value indicating whether resync is required.
  final pulumi.Input<String> resyncRequired;
  /// The resync state.
  final pulumi.Input<String> resyncState;
  /// The resync transferred bytes from source VM to target for all selected disks on source VM.
  final pulumi.Input<double> resyncTransferredBytes;
  /// The target datastore name.
  final pulumi.Input<String> targetDataStoreName;
  /// The target VM name.
  final pulumi.Input<String> targetVmName;
  /// The target vCenter Id.
  final pulumi.Input<String> targetvCenterId;
  /// The network details.
  final pulumi.Input<List<InMageRcmFailbackNicDetailsResponse>>? vmNics;

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
      'discoveredVmDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmFailbackDiscoveredProtectedVmDetailsResponse, Map<String, dynamic>>(discoveredVmDetails, (value) => value.toMap()),
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
      'mobilityAgentDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmFailbackMobilityAgentDetailsResponse, Map<String, dynamic>>(mobilityAgentDetails, (value) => value.toMap()),
      'multiVmGroupName': multiVmGroupName,
      'osType': osType,
      'protectedDisks': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmFailbackProtectedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedDisks, (value) => pulumi.Input.encodeList<InMageRcmFailbackProtectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmFailbackNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<InMageRcmFailbackNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InMageRcmFailbackReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackReplicationDetailsResponse(
      azureVirtualMachineId: (map['azureVirtualMachineId'] as String).input(),
      discoveredVmDetails: map['discoveredVmDetails'] == null ? null : (InMageRcmFailbackDiscoveredProtectedVmDetailsResponse.fromMap((map['discoveredVmDetails']! as Map).cast<String, dynamic>())).input(),
      initialReplicationProcessedBytes: (map['initialReplicationProcessedBytes'] as double).input(),
      initialReplicationProgressHealth: (map['initialReplicationProgressHealth'] as String).input(),
      initialReplicationProgressPercentage: (map['initialReplicationProgressPercentage'] as int).input(),
      initialReplicationTransferredBytes: (map['initialReplicationTransferredBytes'] as double).input(),
      instanceType: (map['instanceType'] as String).input(),
      internalIdentifier: (map['internalIdentifier'] as String).input(),
      isAgentRegistrationSuccessfulAfterFailover: (map['isAgentRegistrationSuccessfulAfterFailover'] as bool).input(),
      lastPlannedFailoverStartTime: (map['lastPlannedFailoverStartTime'] as String).input(),
      lastPlannedFailoverStatus: (map['lastPlannedFailoverStatus'] as String).input(),
      lastUsedPolicyFriendlyName: (map['lastUsedPolicyFriendlyName'] as String).input(),
      lastUsedPolicyId: (map['lastUsedPolicyId'] as String).input(),
      logStorageAccountId: (map['logStorageAccountId'] as String).input(),
      mobilityAgentDetails: map['mobilityAgentDetails'] == null ? null : (InMageRcmFailbackMobilityAgentDetailsResponse.fromMap((map['mobilityAgentDetails']! as Map).cast<String, dynamic>())).input(),
      multiVmGroupName: (map['multiVmGroupName'] as String).input(),
      osType: (map['osType'] as String).input(),
      protectedDisks: map['protectedDisks'] == null ? null : (pulumi.Input.decodeList<InMageRcmFailbackProtectedDiskDetailsResponse>(map['protectedDisks']!, (value) => InMageRcmFailbackProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reprotectAgentId: (map['reprotectAgentId'] as String).input(),
      reprotectAgentName: (map['reprotectAgentName'] as String).input(),
      resyncProcessedBytes: (map['resyncProcessedBytes'] as double).input(),
      resyncProgressHealth: (map['resyncProgressHealth'] as String).input(),
      resyncProgressPercentage: (map['resyncProgressPercentage'] as int).input(),
      resyncRequired: (map['resyncRequired'] as String).input(),
      resyncState: (map['resyncState'] as String).input(),
      resyncTransferredBytes: (map['resyncTransferredBytes'] as double).input(),
      targetDataStoreName: (map['targetDataStoreName'] as String).input(),
      targetVmName: (map['targetVmName'] as String).input(),
      targetvCenterId: (map['targetvCenterId'] as String).input(),
      vmNics: map['vmNics'] == null ? null : (pulumi.Input.decodeList<InMageRcmFailbackNicDetailsResponse>(map['vmNics']!, (value) => InMageRcmFailbackNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

