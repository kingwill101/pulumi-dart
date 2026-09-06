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
  final pulumi.Input<InMageRcmFailbackDiscoveredProtectedVmDetailsResponse?>? discoveredVmDetails;
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
  final pulumi.Input<InMageRcmFailbackMobilityAgentDetailsResponse?>? mobilityAgentDetails;
  /// The multi VM group name.
  final pulumi.Input<String> multiVmGroupName;
  /// The type of the OS on the VM.
  final pulumi.Input<String> osType;
  /// The list of protected disks.
  final pulumi.Input<List<InMageRcmFailbackProtectedDiskDetailsResponse>?>? protectedDisks;
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
  final pulumi.Input<List<InMageRcmFailbackNicDetailsResponse>?>? vmNics;

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
  const InMageRcmFailbackReplicationDetailsResponse({
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
      azureVirtualMachineId: pulumi.Input.fromValue(map['azureVirtualMachineId'] as String),
      discoveredVmDetails: (() { final guardedValue = map['discoveredVmDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InMageRcmFailbackDiscoveredProtectedVmDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialReplicationProcessedBytes: pulumi.Input.fromValue((map['initialReplicationProcessedBytes'] as num).toDouble()),
      initialReplicationProgressHealth: pulumi.Input.fromValue(map['initialReplicationProgressHealth'] as String),
      initialReplicationProgressPercentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['initialReplicationProgressPercentage'])),
      initialReplicationTransferredBytes: pulumi.Input.fromValue((map['initialReplicationTransferredBytes'] as num).toDouble()),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internalIdentifier: pulumi.Input.fromValue(map['internalIdentifier'] as String),
      isAgentRegistrationSuccessfulAfterFailover: pulumi.Input.fromValue(map['isAgentRegistrationSuccessfulAfterFailover'] as bool),
      lastPlannedFailoverStartTime: pulumi.Input.fromValue(map['lastPlannedFailoverStartTime'] as String),
      lastPlannedFailoverStatus: pulumi.Input.fromValue(map['lastPlannedFailoverStatus'] as String),
      lastUsedPolicyFriendlyName: pulumi.Input.fromValue(map['lastUsedPolicyFriendlyName'] as String),
      lastUsedPolicyId: pulumi.Input.fromValue(map['lastUsedPolicyId'] as String),
      logStorageAccountId: pulumi.Input.fromValue(map['logStorageAccountId'] as String),
      mobilityAgentDetails: (() { final guardedValue = map['mobilityAgentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InMageRcmFailbackMobilityAgentDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiVmGroupName: pulumi.Input.fromValue(map['multiVmGroupName'] as String),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      protectedDisks: (() { final guardedValue = map['protectedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InMageRcmFailbackProtectedDiskDetailsResponse>(guardedValue, (value) => InMageRcmFailbackProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reprotectAgentId: pulumi.Input.fromValue(map['reprotectAgentId'] as String),
      reprotectAgentName: pulumi.Input.fromValue(map['reprotectAgentName'] as String),
      resyncProcessedBytes: pulumi.Input.fromValue((map['resyncProcessedBytes'] as num).toDouble()),
      resyncProgressHealth: pulumi.Input.fromValue(map['resyncProgressHealth'] as String),
      resyncProgressPercentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['resyncProgressPercentage'])),
      resyncRequired: pulumi.Input.fromValue(map['resyncRequired'] as String),
      resyncState: pulumi.Input.fromValue(map['resyncState'] as String),
      resyncTransferredBytes: pulumi.Input.fromValue((map['resyncTransferredBytes'] as num).toDouble()),
      targetDataStoreName: pulumi.Input.fromValue(map['targetDataStoreName'] as String),
      targetVmName: pulumi.Input.fromValue(map['targetVmName'] as String),
      targetvCenterId: pulumi.Input.fromValue(map['targetvCenterId'] as String),
      vmNics: (() { final guardedValue = map['vmNics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InMageRcmFailbackNicDetailsResponse>(guardedValue, (value) => InMageRcmFailbackNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
