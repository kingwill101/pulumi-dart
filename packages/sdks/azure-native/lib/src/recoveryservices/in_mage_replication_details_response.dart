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
  final pulumi.Input<String?>? activeSiteType;
  /// The agent details.
  final pulumi.Input<InMageAgentDetailsResponse?>? agentDetails;
  /// A value indicating the underlying Azure storage account. If the VM is not running in Azure, this value shall be set to null.
  final pulumi.Input<String?>? azureStorageAccountId;
  /// The compressed data change rate in MB.
  final pulumi.Input<double?>? compressedDataRateInMB;
  /// The collection of Consistency points.
  final pulumi.Input<Map<String, String>?>? consistencyPoints;
  /// The datastores of the on-premise machine Value can be list of strings that contain datastore names.
  final pulumi.Input<List<String>?>? datastores;
  /// A value indicating the discovery type of the machine.
  final pulumi.Input<String?>? discoveryType;
  /// A value indicating whether any disk is resized for this VM.
  final pulumi.Input<String?>? diskResized;
  /// The infrastructure VM Id.
  final pulumi.Input<String?>? infrastructureVmId;
  /// Gets the Instance type.
  /// Expected value is 'InMage'.
  final pulumi.Input<String> instanceType;
  /// The source IP address.
  final pulumi.Input<String?>? ipAddress;
  /// A value indicating whether additional IR stats are available or not.
  final pulumi.Input<bool?>? isAdditionalStatsAvailable;
  /// The last heartbeat received from the source server.
  final pulumi.Input<String?>? lastHeartbeat;
  /// The last RPO calculated time.
  final pulumi.Input<String?>? lastRpoCalculatedTime;
  /// The last update time received from on-prem components.
  final pulumi.Input<String?>? lastUpdateReceivedTime;
  /// The master target Id.
  final pulumi.Input<String?>? masterTargetId;
  /// The multi vm group Id, if any.
  final pulumi.Input<String?>? multiVmGroupId;
  /// The multi vm group name, if any.
  final pulumi.Input<String?>? multiVmGroupName;
  /// A value indicating whether the multi vm sync is enabled or disabled.
  final pulumi.Input<String?>? multiVmSyncStatus;
  /// The OS details.
  final pulumi.Input<OSDiskDetailsResponse?>? osDetails;
  /// The OS Version of the protected item.
  final pulumi.Input<String?>? osVersion;
  /// The process server Id.
  final pulumi.Input<String?>? processServerId;
  /// The list of protected disks.
  final pulumi.Input<List<InMageProtectedDiskDetailsResponse>?>? protectedDisks;
  /// The protection stage.
  final pulumi.Input<String?>? protectionStage;
  /// A value indicating whether the source server requires a restart after update.
  final pulumi.Input<String?>? rebootAfterUpdateStatus;
  /// The replica id of the protected item.
  final pulumi.Input<String?>? replicaId;
  /// The resync details of the machine.
  final pulumi.Input<InitialReplicationDetailsResponse?>? resyncDetails;
  /// The retention window end time.
  final pulumi.Input<String?>? retentionWindowEnd;
  /// The retention window start time.
  final pulumi.Input<String?>? retentionWindowStart;
  /// The RPO in seconds.
  final pulumi.Input<double?>? rpoInSeconds;
  /// The CPU count of the VM on the primary side.
  final pulumi.Input<int?>? sourceVmCpuCount;
  /// The RAM size of the VM on the primary side.
  final pulumi.Input<int?>? sourceVmRamSizeInMB;
  /// The total transferred data in bytes.
  final pulumi.Input<double?>? totalDataTransferred;
  /// The progress health.
  final pulumi.Input<String?>? totalProgressHealth;
  /// The uncompressed data change rate in MB.
  final pulumi.Input<double?>? uncompressedDataRateInMB;
  /// The vCenter infrastructure Id.
  final pulumi.Input<String?>? vCenterInfrastructureId;
  /// The validation errors of the on-premise machine Value can be list of validation errors.
  final pulumi.Input<List<HealthErrorResponse>?>? validationErrors;
  /// The virtual machine Id.
  final pulumi.Input<String?>? vmId;
  /// The PE Network details.
  final pulumi.Input<List<VMNicDetailsResponse>?>? vmNics;
  /// The protection state for the vm.
  final pulumi.Input<String?>? vmProtectionState;
  /// The protection state description for the vm.
  final pulumi.Input<String?>? vmProtectionStateDescription;

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
  const InMageReplicationDetailsResponse({
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
      activeSiteType: (() { final guardedValue = map['activeSiteType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentDetails: (() { final guardedValue = map['agentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InMageAgentDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureStorageAccountId: (() { final guardedValue = map['azureStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compressedDataRateInMB: (() { final guardedValue = map['compressedDataRateInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      consistencyPoints: (() { final guardedValue = map['consistencyPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      datastores: (() { final guardedValue = map['datastores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      discoveryType: (() { final guardedValue = map['discoveryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskResized: (() { final guardedValue = map['diskResized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureVmId: (() { final guardedValue = map['infrastructureVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAdditionalStatsAvailable: (() { final guardedValue = map['isAdditionalStatsAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastHeartbeat: (() { final guardedValue = map['lastHeartbeat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRpoCalculatedTime: (() { final guardedValue = map['lastRpoCalculatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdateReceivedTime: (() { final guardedValue = map['lastUpdateReceivedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterTargetId: (() { final guardedValue = map['masterTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupId: (() { final guardedValue = map['multiVmGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupName: (() { final guardedValue = map['multiVmGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmSyncStatus: (() { final guardedValue = map['multiVmSyncStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDetails: (() { final guardedValue = map['osDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSDiskDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processServerId: (() { final guardedValue = map['processServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedDisks: (() { final guardedValue = map['protectedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InMageProtectedDiskDetailsResponse>(guardedValue, (value) => InMageProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectionStage: (() { final guardedValue = map['protectionStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rebootAfterUpdateStatus: (() { final guardedValue = map['rebootAfterUpdateStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaId: (() { final guardedValue = map['replicaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resyncDetails: (() { final guardedValue = map['resyncDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InitialReplicationDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionWindowEnd: (() { final guardedValue = map['retentionWindowEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionWindowStart: (() { final guardedValue = map['retentionWindowStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rpoInSeconds: (() { final guardedValue = map['rpoInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sourceVmCpuCount: (() { final guardedValue = map['sourceVmCpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sourceVmRamSizeInMB: (() { final guardedValue = map['sourceVmRamSizeInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalDataTransferred: (() { final guardedValue = map['totalDataTransferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      totalProgressHealth: (() { final guardedValue = map['totalProgressHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uncompressedDataRateInMB: (() { final guardedValue = map['uncompressedDataRateInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      vCenterInfrastructureId: (() { final guardedValue = map['vCenterInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationErrors: (() { final guardedValue = map['validationErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmNics: (() { final guardedValue = map['vmNics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMNicDetailsResponse>(guardedValue, (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmProtectionState: (() { final guardedValue = map['vmProtectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmProtectionStateDescription: (() { final guardedValue = map['vmProtectionStateDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
