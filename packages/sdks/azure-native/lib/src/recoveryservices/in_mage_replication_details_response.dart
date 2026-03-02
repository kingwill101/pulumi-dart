// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';
import 'in_mage_agent_details_response.dart';
import 'in_mage_protected_disk_details_response.dart';
import 'initial_replication_details_response.dart';
import 'osdisk_details_response.dart';
import 'vmnic_details_response.dart';

/// InMage provider specific settings.
class InMageReplicationDetailsResponse {
  /// The active location of the VM. If the VM is being protected from Azure, this field will take values from { Azure, OnPrem }. If the VM is being protected between two data-centers, this field will be OnPrem always.
  final pulumi.Input<String>? activeSiteType;
  /// The agent details.
  final pulumi.Input<InMageAgentDetailsResponse>? agentDetails;
  /// A value indicating the underlying Azure storage account. If the VM is not running in Azure, this value shall be set to null.
  final pulumi.Input<String>? azureStorageAccountId;
  /// The compressed data change rate in MB.
  final pulumi.Input<double>? compressedDataRateInMB;
  /// The collection of Consistency points.
  final pulumi.Input<Map<String, String>>? consistencyPoints;
  /// The datastores of the on-premise machine Value can be list of strings that contain datastore names.
  final pulumi.Input<List<String>>? datastores;
  /// A value indicating the discovery type of the machine.
  final pulumi.Input<String>? discoveryType;
  /// A value indicating whether any disk is resized for this VM.
  final pulumi.Input<String>? diskResized;
  /// The infrastructure VM Id.
  final pulumi.Input<String>? infrastructureVmId;
  /// Gets the Instance type.
  /// Expected value is 'InMage'.
  final pulumi.Input<String> instanceType;
  /// The source IP address.
  final pulumi.Input<String>? ipAddress;
  /// A value indicating whether additional IR stats are available or not.
  final pulumi.Input<bool>? isAdditionalStatsAvailable;
  /// The last heartbeat received from the source server.
  final pulumi.Input<String>? lastHeartbeat;
  /// The last RPO calculated time.
  final pulumi.Input<String>? lastRpoCalculatedTime;
  /// The last update time received from on-prem components.
  final pulumi.Input<String>? lastUpdateReceivedTime;
  /// The master target Id.
  final pulumi.Input<String>? masterTargetId;
  /// The multi vm group Id, if any.
  final pulumi.Input<String>? multiVmGroupId;
  /// The multi vm group name, if any.
  final pulumi.Input<String>? multiVmGroupName;
  /// A value indicating whether the multi vm sync is enabled or disabled.
  final pulumi.Input<String>? multiVmSyncStatus;
  /// The OS details.
  final pulumi.Input<OSDiskDetailsResponse>? osDetails;
  /// The OS Version of the protected item.
  final pulumi.Input<String>? osVersion;
  /// The process server Id.
  final pulumi.Input<String>? processServerId;
  /// The list of protected disks.
  final pulumi.Input<List<InMageProtectedDiskDetailsResponse>>? protectedDisks;
  /// The protection stage.
  final pulumi.Input<String>? protectionStage;
  /// A value indicating whether the source server requires a restart after update.
  final pulumi.Input<String>? rebootAfterUpdateStatus;
  /// The replica id of the protected item.
  final pulumi.Input<String>? replicaId;
  /// The resync details of the machine.
  final pulumi.Input<InitialReplicationDetailsResponse>? resyncDetails;
  /// The retention window end time.
  final pulumi.Input<String>? retentionWindowEnd;
  /// The retention window start time.
  final pulumi.Input<String>? retentionWindowStart;
  /// The RPO in seconds.
  final pulumi.Input<double>? rpoInSeconds;
  /// The CPU count of the VM on the primary side.
  final pulumi.Input<int>? sourceVmCpuCount;
  /// The RAM size of the VM on the primary side.
  final pulumi.Input<int>? sourceVmRamSizeInMB;
  /// The total transferred data in bytes.
  final pulumi.Input<double>? totalDataTransferred;
  /// The progress health.
  final pulumi.Input<String>? totalProgressHealth;
  /// The uncompressed data change rate in MB.
  final pulumi.Input<double>? uncompressedDataRateInMB;
  /// The vCenter infrastructure Id.
  final pulumi.Input<String>? vCenterInfrastructureId;
  /// The validation errors of the on-premise machine Value can be list of validation errors.
  final pulumi.Input<List<HealthErrorResponse>>? validationErrors;
  /// The virtual machine Id.
  final pulumi.Input<String>? vmId;
  /// The PE Network details.
  final pulumi.Input<List<VMNicDetailsResponse>>? vmNics;
  /// The protection state for the vm.
  final pulumi.Input<String>? vmProtectionState;
  /// The protection state description for the vm.
  final pulumi.Input<String>? vmProtectionStateDescription;

  /// Creates a new [InMageReplicationDetailsResponse].
  /// [activeSiteType] The active location of the VM. If the VM is being protected from Azure, this field will take values from { Azure, OnPrem }. If the VM is being protected between two data-centers, this field will be OnPrem always.
  /// [agentDetails] The agent details.
  /// [azureStorageAccountId] A value indicating the underlying Azure storage account. If the VM is not running in Azure, this value shall be set to null.
  /// [compressedDataRateInMB] The compressed data change rate in MB.
  /// [consistencyPoints] The collection of Consistency points.
  /// [datastores] The datastores of the on-premise machine Value can be list of strings that contain datastore names.
  /// [discoveryType] A value indicating the discovery type of the machine.
  /// [diskResized] A value indicating whether any disk is resized for this VM.
  /// [infrastructureVmId] The infrastructure VM Id.
  /// [instanceType] Gets the Instance type.
  /// [ipAddress] The source IP address.
  /// [isAdditionalStatsAvailable] A value indicating whether additional IR stats are available or not.
  /// [lastHeartbeat] The last heartbeat received from the source server.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [lastUpdateReceivedTime] The last update time received from on-prem components.
  /// [masterTargetId] The master target Id.
  /// [multiVmGroupId] The multi vm group Id, if any.
  /// [multiVmGroupName] The multi vm group name, if any.
  /// [multiVmSyncStatus] A value indicating whether the multi vm sync is enabled or disabled.
  /// [osDetails] The OS details.
  /// [osVersion] The OS Version of the protected item.
  /// [processServerId] The process server Id.
  /// [protectedDisks] The list of protected disks.
  /// [protectionStage] The protection stage.
  /// [rebootAfterUpdateStatus] A value indicating whether the source server requires a restart after update.
  /// [replicaId] The replica id of the protected item.
  /// [resyncDetails] The resync details of the machine.
  /// [retentionWindowEnd] The retention window end time.
  /// [retentionWindowStart] The retention window start time.
  /// [rpoInSeconds] The RPO in seconds.
  /// [sourceVmCpuCount] The CPU count of the VM on the primary side.
  /// [sourceVmRamSizeInMB] The RAM size of the VM on the primary side.
  /// [totalDataTransferred] The total transferred data in bytes.
  /// [totalProgressHealth] The progress health.
  /// [uncompressedDataRateInMB] The uncompressed data change rate in MB.
  /// [vCenterInfrastructureId] The vCenter infrastructure Id.
  /// [validationErrors] The validation errors of the on-premise machine Value can be list of validation errors.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  InMageReplicationDetailsResponse({
    this.activeSiteType,
    this.agentDetails,
    this.azureStorageAccountId,
    this.compressedDataRateInMB,
    this.consistencyPoints,
    this.datastores,
    this.discoveryType,
    this.diskResized,
    this.infrastructureVmId,
    required this.instanceType,
    this.ipAddress,
    this.isAdditionalStatsAvailable,
    this.lastHeartbeat,
    this.lastRpoCalculatedTime,
    this.lastUpdateReceivedTime,
    this.masterTargetId,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.multiVmSyncStatus,
    this.osDetails,
    this.osVersion,
    this.processServerId,
    this.protectedDisks,
    this.protectionStage,
    this.rebootAfterUpdateStatus,
    this.replicaId,
    this.resyncDetails,
    this.retentionWindowEnd,
    this.retentionWindowStart,
    this.rpoInSeconds,
    this.sourceVmCpuCount,
    this.sourceVmRamSizeInMB,
    this.totalDataTransferred,
    this.totalProgressHealth,
    this.uncompressedDataRateInMB,
    this.vCenterInfrastructureId,
    this.validationErrors,
    this.vmId,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSiteType': ?activeSiteType,
      'agentDetails': ?pulumi.Input.mapOptionalInputValue<InMageAgentDetailsResponse, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'azureStorageAccountId': ?azureStorageAccountId,
      'compressedDataRateInMB': ?compressedDataRateInMB,
      'consistencyPoints': ?consistencyPoints,
      'datastores': ?datastores,
      'discoveryType': ?discoveryType,
      'diskResized': ?diskResized,
      'infrastructureVmId': ?infrastructureVmId,
      'instanceType': instanceType,
      'ipAddress': ?ipAddress,
      'isAdditionalStatsAvailable': ?isAdditionalStatsAvailable,
      'lastHeartbeat': ?lastHeartbeat,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lastUpdateReceivedTime': ?lastUpdateReceivedTime,
      'masterTargetId': ?masterTargetId,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'multiVmSyncStatus': ?multiVmSyncStatus,
      'osDetails': ?pulumi.Input.mapOptionalInputValue<OSDiskDetailsResponse, Map<String, dynamic>>(osDetails, (value) => value.toMap()),
      'osVersion': ?osVersion,
      'processServerId': ?processServerId,
      'protectedDisks': ?pulumi.Input.mapOptionalInputValue<List<InMageProtectedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedDisks, (value) => pulumi.Input.encodeList<InMageProtectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectionStage': ?protectionStage,
      'rebootAfterUpdateStatus': ?rebootAfterUpdateStatus,
      'replicaId': ?replicaId,
      'resyncDetails': ?pulumi.Input.mapOptionalInputValue<InitialReplicationDetailsResponse, Map<String, dynamic>>(resyncDetails, (value) => value.toMap()),
      'retentionWindowEnd': ?retentionWindowEnd,
      'retentionWindowStart': ?retentionWindowStart,
      'rpoInSeconds': ?rpoInSeconds,
      'sourceVmCpuCount': ?sourceVmCpuCount,
      'sourceVmRamSizeInMB': ?sourceVmRamSizeInMB,
      'totalDataTransferred': ?totalDataTransferred,
      'totalProgressHealth': ?totalProgressHealth,
      'uncompressedDataRateInMB': ?uncompressedDataRateInMB,
      'vCenterInfrastructureId': ?vCenterInfrastructureId,
      'validationErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmId': ?vmId,
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<VMNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory InMageReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageReplicationDetailsResponse(
      activeSiteType: map['activeSiteType'] == null ? null : (map['activeSiteType'] as String).input(),
      agentDetails: map['agentDetails'] == null ? null : (InMageAgentDetailsResponse.fromMap((map['agentDetails'] as Map).cast<String, dynamic>())).input(),
      azureStorageAccountId: map['azureStorageAccountId'] == null ? null : (map['azureStorageAccountId'] as String).input(),
      compressedDataRateInMB: map['compressedDataRateInMB'] == null ? null : (map['compressedDataRateInMB'] as double).input(),
      consistencyPoints: map['consistencyPoints'] == null ? null : ((map['consistencyPoints'] as Map).cast<String, String>()).input(),
      datastores: map['datastores'] == null ? null : ((map['datastores'] as List).cast<String>()).input(),
      discoveryType: map['discoveryType'] == null ? null : (map['discoveryType'] as String).input(),
      diskResized: map['diskResized'] == null ? null : (map['diskResized'] as String).input(),
      infrastructureVmId: map['infrastructureVmId'] == null ? null : (map['infrastructureVmId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      isAdditionalStatsAvailable: map['isAdditionalStatsAvailable'] == null ? null : (map['isAdditionalStatsAvailable'] as bool).input(),
      lastHeartbeat: map['lastHeartbeat'] == null ? null : (map['lastHeartbeat'] as String).input(),
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : (map['lastRpoCalculatedTime'] as String).input(),
      lastUpdateReceivedTime: map['lastUpdateReceivedTime'] == null ? null : (map['lastUpdateReceivedTime'] as String).input(),
      masterTargetId: map['masterTargetId'] == null ? null : (map['masterTargetId'] as String).input(),
      multiVmGroupId: map['multiVmGroupId'] == null ? null : (map['multiVmGroupId'] as String).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName'] as String).input(),
      multiVmSyncStatus: map['multiVmSyncStatus'] == null ? null : (map['multiVmSyncStatus'] as String).input(),
      osDetails: map['osDetails'] == null ? null : (OSDiskDetailsResponse.fromMap((map['osDetails'] as Map).cast<String, dynamic>())).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion'] as String).input(),
      processServerId: map['processServerId'] == null ? null : (map['processServerId'] as String).input(),
      protectedDisks: map['protectedDisks'] == null ? null : (pulumi.Input.decodeList<InMageProtectedDiskDetailsResponse>(map['protectedDisks'], (value) => InMageProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectionStage: map['protectionStage'] == null ? null : (map['protectionStage'] as String).input(),
      rebootAfterUpdateStatus: map['rebootAfterUpdateStatus'] == null ? null : (map['rebootAfterUpdateStatus'] as String).input(),
      replicaId: map['replicaId'] == null ? null : (map['replicaId'] as String).input(),
      resyncDetails: map['resyncDetails'] == null ? null : (InitialReplicationDetailsResponse.fromMap((map['resyncDetails'] as Map).cast<String, dynamic>())).input(),
      retentionWindowEnd: map['retentionWindowEnd'] == null ? null : (map['retentionWindowEnd'] as String).input(),
      retentionWindowStart: map['retentionWindowStart'] == null ? null : (map['retentionWindowStart'] as String).input(),
      rpoInSeconds: map['rpoInSeconds'] == null ? null : (map['rpoInSeconds'] as double).input(),
      sourceVmCpuCount: map['sourceVmCpuCount'] == null ? null : (map['sourceVmCpuCount'] as int).input(),
      sourceVmRamSizeInMB: map['sourceVmRamSizeInMB'] == null ? null : (map['sourceVmRamSizeInMB'] as int).input(),
      totalDataTransferred: map['totalDataTransferred'] == null ? null : (map['totalDataTransferred'] as double).input(),
      totalProgressHealth: map['totalProgressHealth'] == null ? null : (map['totalProgressHealth'] as String).input(),
      uncompressedDataRateInMB: map['uncompressedDataRateInMB'] == null ? null : (map['uncompressedDataRateInMB'] as double).input(),
      vCenterInfrastructureId: map['vCenterInfrastructureId'] == null ? null : (map['vCenterInfrastructureId'] as String).input(),
      validationErrors: map['validationErrors'] == null ? null : (pulumi.Input.decodeList<HealthErrorResponse>(map['validationErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmId: map['vmId'] == null ? null : (map['vmId'] as String).input(),
      vmNics: map['vmNics'] == null ? null : (pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics'], (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmProtectionState: map['vmProtectionState'] == null ? null : (map['vmProtectionState'] as String).input(),
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : (map['vmProtectionStateDescription'] as String).input(),
    );
  }
}

