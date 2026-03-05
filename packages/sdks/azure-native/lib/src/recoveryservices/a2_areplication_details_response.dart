// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aprotected_disk_details_response.dart';
import 'a2_aprotected_managed_disk_details_response.dart';
import 'a2_aunprotected_disk_details_response.dart';
import 'azure_to_azure_vm_synced_config_details_response.dart';
import 'extended_location_response.dart';
import 'vmnic_details_response.dart';

/// A2A provider specific settings.
class A2AReplicationDetailsResponse {
  /// Agent certificate expiry date.
  final pulumi.Input<String> agentCertificateExpiryDate;
  /// Agent expiry date.
  final pulumi.Input<String>? agentExpiryDate;
  /// The agent version.
  final pulumi.Input<String>? agentVersion;
  /// A value indicating whether the auto protection is enabled.
  final pulumi.Input<String>? autoProtectionOfDataDisk;
  /// A value indicating the churn option selected by user.
  final pulumi.Input<String> churnOptionSelected;
  /// The fabric specific object Id of the virtual machine.
  final pulumi.Input<String>? fabricObjectId;
  /// The initial primary extended location.
  final pulumi.Input<ExtendedLocationResponse>? initialPrimaryExtendedLocation;
  /// The initial primary fabric location.
  final pulumi.Input<String> initialPrimaryFabricLocation;
  /// The initial primary availability zone.
  final pulumi.Input<String> initialPrimaryZone;
  /// The initial recovery extended location.
  final pulumi.Input<ExtendedLocationResponse>? initialRecoveryExtendedLocation;
  /// The initial recovery fabric location.
  final pulumi.Input<String> initialRecoveryFabricLocation;
  /// The initial recovery availability zone.
  final pulumi.Input<String> initialRecoveryZone;
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// A value indicating if the cluster infra is ready or not.
  final pulumi.Input<bool>? isClusterInfraReady;
  /// A value indicating whether agent certificate update is required.
  final pulumi.Input<bool>? isReplicationAgentCertificateUpdateRequired;
  /// A value indicating whether replication agent update is required.
  final pulumi.Input<bool>? isReplicationAgentUpdateRequired;
  /// The last heartbeat received from the source server.
  final pulumi.Input<String>? lastHeartbeat;
  /// The time (in UTC) when the last RPO value was calculated by Protection Service.
  final pulumi.Input<String>? lastRpoCalculatedTime;
  /// An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  final pulumi.Input<String>? lifecycleId;
  /// The management Id.
  final pulumi.Input<String>? managementId;
  /// The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  final pulumi.Input<String>? monitoringJobType;
  /// The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  final pulumi.Input<int>? monitoringPercentageCompletion;
  /// Whether Multi VM group is auto created or specified by user.
  final pulumi.Input<String>? multiVmGroupCreateOption;
  /// The multi vm group Id.
  final pulumi.Input<String>? multiVmGroupId;
  /// The multi vm group name.
  final pulumi.Input<String>? multiVmGroupName;
  /// The type of operating system.
  final pulumi.Input<String>? osType;
  /// The primary availability zone.
  final pulumi.Input<String>? primaryAvailabilityZone;
  /// The primary Extended Location.
  final pulumi.Input<ExtendedLocationResponse>? primaryExtendedLocation;
  /// Primary fabric location.
  final pulumi.Input<String>? primaryFabricLocation;
  /// The list of protected disks.
  final pulumi.Input<List<A2AProtectedDiskDetailsResponse>>? protectedDisks;
  /// The list of protected managed disks.
  final pulumi.Input<List<A2AProtectedManagedDiskDetailsResponse>>? protectedManagedDisks;
  /// The replication protection cluster Id.
  final pulumi.Input<String>? protectionClusterId;
  /// The recovery availability set.
  final pulumi.Input<String>? recoveryAvailabilitySet;
  /// The recovery availability zone.
  final pulumi.Input<String>? recoveryAvailabilityZone;
  /// The recovery azure generation.
  final pulumi.Input<String> recoveryAzureGeneration;
  /// The recovery resource group.
  final pulumi.Input<String>? recoveryAzureResourceGroupId;
  /// The name of recovery virtual machine.
  final pulumi.Input<String>? recoveryAzureVMName;
  /// The size of recovery virtual machine.
  final pulumi.Input<String>? recoveryAzureVMSize;
  /// The recovery boot diagnostic storage account Arm Id.
  final pulumi.Input<String>? recoveryBootDiagStorageAccountId;
  /// The recovery capacity reservation group Id.
  final pulumi.Input<String>? recoveryCapacityReservationGroupId;
  /// The recovery cloud service.
  final pulumi.Input<String>? recoveryCloudService;
  /// The recovery Extended Location.
  final pulumi.Input<ExtendedLocationResponse>? recoveryExtendedLocation;
  /// The recovery fabric location.
  final pulumi.Input<String>? recoveryFabricLocation;
  /// The recovery fabric object Id.
  final pulumi.Input<String>? recoveryFabricObjectId;
  /// The recovery proximity placement group Id.
  final pulumi.Input<String>? recoveryProximityPlacementGroupId;
  /// The recovery virtual machine scale set id.
  final pulumi.Input<String>? recoveryVirtualMachineScaleSetId;
  /// The last RPO value in seconds.
  final pulumi.Input<double>? rpoInSeconds;
  /// The recovery virtual network.
  final pulumi.Input<String>? selectedRecoveryAzureNetworkId;
  /// The test failover virtual network.
  final pulumi.Input<String>? selectedTfoAzureNetworkId;
  /// The test failover fabric object Id.
  final pulumi.Input<String>? testFailoverRecoveryFabricObjectId;
  /// The test failover vm name.
  final pulumi.Input<String>? tfoAzureVMName;
  /// The list of unprotected disks.
  final pulumi.Input<List<A2AUnprotectedDiskDetailsResponse>>? unprotectedDisks;
  /// The encryption type of the VM.
  final pulumi.Input<String> vmEncryptionType;
  /// The virtual machine nic details.
  final pulumi.Input<List<VMNicDetailsResponse>>? vmNics;
  /// The protection state for the vm.
  final pulumi.Input<String>? vmProtectionState;
  /// The protection state description for the vm.
  final pulumi.Input<String>? vmProtectionStateDescription;
  /// The synced configuration details.
  final pulumi.Input<AzureToAzureVmSyncedConfigDetailsResponse>? vmSyncedConfigDetails;

  /// Creates a new [A2AReplicationDetailsResponse].
  /// [agentCertificateExpiryDate] Agent certificate expiry date.
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The agent version.
  /// [autoProtectionOfDataDisk] A value indicating whether the auto protection is enabled.
  /// [churnOptionSelected] A value indicating the churn option selected by user.
  /// [fabricObjectId] The fabric specific object Id of the virtual machine.
  /// [initialPrimaryExtendedLocation] The initial primary extended location.
  /// [initialPrimaryFabricLocation] The initial primary fabric location.
  /// [initialPrimaryZone] The initial primary availability zone.
  /// [initialRecoveryExtendedLocation] The initial recovery extended location.
  /// [initialRecoveryFabricLocation] The initial recovery fabric location.
  /// [initialRecoveryZone] The initial recovery availability zone.
  /// [instanceType] Gets the Instance type.
  /// [isClusterInfraReady] A value indicating if the cluster infra is ready or not.
  /// [isReplicationAgentCertificateUpdateRequired] A value indicating whether agent certificate update is required.
  /// [isReplicationAgentUpdateRequired] A value indicating whether replication agent update is required.
  /// [lastHeartbeat] The last heartbeat received from the source server.
  /// [lastRpoCalculatedTime] The time (in UTC) when the last RPO value was calculated by Protection Service.
  /// [lifecycleId] An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  /// [managementId] The management Id.
  /// [monitoringJobType] The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  /// [monitoringPercentageCompletion] The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  /// [multiVmGroupCreateOption] Whether Multi VM group is auto created or specified by user.
  /// [multiVmGroupId] The multi vm group Id.
  /// [multiVmGroupName] The multi vm group name.
  /// [osType] The type of operating system.
  /// [primaryAvailabilityZone] The primary availability zone.
  /// [primaryExtendedLocation] The primary Extended Location.
  /// [primaryFabricLocation] Primary fabric location.
  /// [protectedDisks] The list of protected disks.
  /// [protectedManagedDisks] The list of protected managed disks.
  /// [protectionClusterId] The replication protection cluster Id.
  /// [recoveryAvailabilitySet] The recovery availability set.
  /// [recoveryAvailabilityZone] The recovery availability zone.
  /// [recoveryAzureGeneration] The recovery azure generation.
  /// [recoveryAzureResourceGroupId] The recovery resource group.
  /// [recoveryAzureVMName] The name of recovery virtual machine.
  /// [recoveryAzureVMSize] The size of recovery virtual machine.
  /// [recoveryBootDiagStorageAccountId] The recovery boot diagnostic storage account Arm Id.
  /// [recoveryCapacityReservationGroupId] The recovery capacity reservation group Id.
  /// [recoveryCloudService] The recovery cloud service.
  /// [recoveryExtendedLocation] The recovery Extended Location.
  /// [recoveryFabricLocation] The recovery fabric location.
  /// [recoveryFabricObjectId] The recovery fabric object Id.
  /// [recoveryProximityPlacementGroupId] The recovery proximity placement group Id.
  /// [recoveryVirtualMachineScaleSetId] The recovery virtual machine scale set id.
  /// [rpoInSeconds] The last RPO value in seconds.
  /// [selectedRecoveryAzureNetworkId] The recovery virtual network.
  /// [selectedTfoAzureNetworkId] The test failover virtual network.
  /// [testFailoverRecoveryFabricObjectId] The test failover fabric object Id.
  /// [tfoAzureVMName] The test failover vm name.
  /// [unprotectedDisks] The list of unprotected disks.
  /// [vmEncryptionType] The encryption type of the VM.
  /// [vmNics] The virtual machine nic details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  /// [vmSyncedConfigDetails] The synced configuration details.
  A2AReplicationDetailsResponse({
    required this.agentCertificateExpiryDate,
    this.agentExpiryDate,
    this.agentVersion,
    this.autoProtectionOfDataDisk,
    required this.churnOptionSelected,
    this.fabricObjectId,
    this.initialPrimaryExtendedLocation,
    required this.initialPrimaryFabricLocation,
    required this.initialPrimaryZone,
    this.initialRecoveryExtendedLocation,
    required this.initialRecoveryFabricLocation,
    required this.initialRecoveryZone,
    required this.instanceType,
    this.isClusterInfraReady,
    this.isReplicationAgentCertificateUpdateRequired,
    this.isReplicationAgentUpdateRequired,
    this.lastHeartbeat,
    this.lastRpoCalculatedTime,
    this.lifecycleId,
    this.managementId,
    this.monitoringJobType,
    this.monitoringPercentageCompletion,
    this.multiVmGroupCreateOption,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.osType,
    this.primaryAvailabilityZone,
    this.primaryExtendedLocation,
    this.primaryFabricLocation,
    this.protectedDisks,
    this.protectedManagedDisks,
    this.protectionClusterId,
    this.recoveryAvailabilitySet,
    this.recoveryAvailabilityZone,
    required this.recoveryAzureGeneration,
    this.recoveryAzureResourceGroupId,
    this.recoveryAzureVMName,
    this.recoveryAzureVMSize,
    this.recoveryBootDiagStorageAccountId,
    this.recoveryCapacityReservationGroupId,
    this.recoveryCloudService,
    this.recoveryExtendedLocation,
    this.recoveryFabricLocation,
    this.recoveryFabricObjectId,
    this.recoveryProximityPlacementGroupId,
    this.recoveryVirtualMachineScaleSetId,
    this.rpoInSeconds,
    this.selectedRecoveryAzureNetworkId,
    this.selectedTfoAzureNetworkId,
    this.testFailoverRecoveryFabricObjectId,
    this.tfoAzureVMName,
    this.unprotectedDisks,
    required this.vmEncryptionType,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
    this.vmSyncedConfigDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCertificateExpiryDate': agentCertificateExpiryDate,
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'autoProtectionOfDataDisk': ?autoProtectionOfDataDisk,
      'churnOptionSelected': churnOptionSelected,
      'fabricObjectId': ?fabricObjectId,
      'initialPrimaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(initialPrimaryExtendedLocation, (value) => value.toMap()),
      'initialPrimaryFabricLocation': initialPrimaryFabricLocation,
      'initialPrimaryZone': initialPrimaryZone,
      'initialRecoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(initialRecoveryExtendedLocation, (value) => value.toMap()),
      'initialRecoveryFabricLocation': initialRecoveryFabricLocation,
      'initialRecoveryZone': initialRecoveryZone,
      'instanceType': instanceType,
      'isClusterInfraReady': ?isClusterInfraReady,
      'isReplicationAgentCertificateUpdateRequired': ?isReplicationAgentCertificateUpdateRequired,
      'isReplicationAgentUpdateRequired': ?isReplicationAgentUpdateRequired,
      'lastHeartbeat': ?lastHeartbeat,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lifecycleId': ?lifecycleId,
      'managementId': ?managementId,
      'monitoringJobType': ?monitoringJobType,
      'monitoringPercentageCompletion': ?monitoringPercentageCompletion,
      'multiVmGroupCreateOption': ?multiVmGroupCreateOption,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'osType': ?osType,
      'primaryAvailabilityZone': ?primaryAvailabilityZone,
      'primaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(primaryExtendedLocation, (value) => value.toMap()),
      'primaryFabricLocation': ?primaryFabricLocation,
      'protectedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AProtectedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedDisks, (value) => pulumi.Input.encodeList<A2AProtectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedManagedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AProtectedManagedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedManagedDisks, (value) => pulumi.Input.encodeList<A2AProtectedManagedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectionClusterId': ?protectionClusterId,
      'recoveryAvailabilitySet': ?recoveryAvailabilitySet,
      'recoveryAvailabilityZone': ?recoveryAvailabilityZone,
      'recoveryAzureGeneration': recoveryAzureGeneration,
      'recoveryAzureResourceGroupId': ?recoveryAzureResourceGroupId,
      'recoveryAzureVMName': ?recoveryAzureVMName,
      'recoveryAzureVMSize': ?recoveryAzureVMSize,
      'recoveryBootDiagStorageAccountId': ?recoveryBootDiagStorageAccountId,
      'recoveryCapacityReservationGroupId': ?recoveryCapacityReservationGroupId,
      'recoveryCloudService': ?recoveryCloudService,
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'recoveryFabricObjectId': ?recoveryFabricObjectId,
      'recoveryProximityPlacementGroupId': ?recoveryProximityPlacementGroupId,
      'recoveryVirtualMachineScaleSetId': ?recoveryVirtualMachineScaleSetId,
      'rpoInSeconds': ?rpoInSeconds,
      'selectedRecoveryAzureNetworkId': ?selectedRecoveryAzureNetworkId,
      'selectedTfoAzureNetworkId': ?selectedTfoAzureNetworkId,
      'testFailoverRecoveryFabricObjectId': ?testFailoverRecoveryFabricObjectId,
      'tfoAzureVMName': ?tfoAzureVMName,
      'unprotectedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AUnprotectedDiskDetailsResponse>, List<Map<String, dynamic>>>(unprotectedDisks, (value) => pulumi.Input.encodeList<A2AUnprotectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmEncryptionType': vmEncryptionType,
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<VMNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
      'vmSyncedConfigDetails': ?pulumi.Input.mapOptionalInputValue<AzureToAzureVmSyncedConfigDetailsResponse, Map<String, dynamic>>(vmSyncedConfigDetails, (value) => value.toMap()),
    };
  }

  factory A2AReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AReplicationDetailsResponse(
      agentCertificateExpiryDate: pulumi.Input.fromValue(map['agentCertificateExpiryDate'] as String),
      agentExpiryDate: (() { final guardedValue = map['agentExpiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoProtectionOfDataDisk: (() { final guardedValue = map['autoProtectionOfDataDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      churnOptionSelected: pulumi.Input.fromValue(map['churnOptionSelected'] as String),
      fabricObjectId: (() { final guardedValue = map['fabricObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialPrimaryExtendedLocation: (() { final guardedValue = map['initialPrimaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialPrimaryFabricLocation: pulumi.Input.fromValue(map['initialPrimaryFabricLocation'] as String),
      initialPrimaryZone: pulumi.Input.fromValue(map['initialPrimaryZone'] as String),
      initialRecoveryExtendedLocation: (() { final guardedValue = map['initialRecoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialRecoveryFabricLocation: pulumi.Input.fromValue(map['initialRecoveryFabricLocation'] as String),
      initialRecoveryZone: pulumi.Input.fromValue(map['initialRecoveryZone'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      isClusterInfraReady: (() { final guardedValue = map['isClusterInfraReady']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isReplicationAgentCertificateUpdateRequired: (() { final guardedValue = map['isReplicationAgentCertificateUpdateRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isReplicationAgentUpdateRequired: (() { final guardedValue = map['isReplicationAgentUpdateRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastHeartbeat: (() { final guardedValue = map['lastHeartbeat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRpoCalculatedTime: (() { final guardedValue = map['lastRpoCalculatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleId: (() { final guardedValue = map['lifecycleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementId: (() { final guardedValue = map['managementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringJobType: (() { final guardedValue = map['monitoringJobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringPercentageCompletion: (() { final guardedValue = map['monitoringPercentageCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      multiVmGroupCreateOption: (() { final guardedValue = map['multiVmGroupCreateOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupId: (() { final guardedValue = map['multiVmGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupName: (() { final guardedValue = map['multiVmGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAvailabilityZone: (() { final guardedValue = map['primaryAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryExtendedLocation: (() { final guardedValue = map['primaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryFabricLocation: (() { final guardedValue = map['primaryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedDisks: (() { final guardedValue = map['protectedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AProtectedDiskDetailsResponse>(guardedValue, (value) => A2AProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectedManagedDisks: (() { final guardedValue = map['protectedManagedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AProtectedManagedDiskDetailsResponse>(guardedValue, (value) => A2AProtectedManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectionClusterId: (() { final guardedValue = map['protectionClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAvailabilitySet: (() { final guardedValue = map['recoveryAvailabilitySet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAvailabilityZone: (() { final guardedValue = map['recoveryAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureGeneration: pulumi.Input.fromValue(map['recoveryAzureGeneration'] as String),
      recoveryAzureResourceGroupId: (() { final guardedValue = map['recoveryAzureResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureVMName: (() { final guardedValue = map['recoveryAzureVMName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureVMSize: (() { final guardedValue = map['recoveryAzureVMSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryBootDiagStorageAccountId: (() { final guardedValue = map['recoveryBootDiagStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryCapacityReservationGroupId: (() { final guardedValue = map['recoveryCapacityReservationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryCloudService: (() { final guardedValue = map['recoveryCloudService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryExtendedLocation: (() { final guardedValue = map['recoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryFabricLocation: (() { final guardedValue = map['recoveryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryFabricObjectId: (() { final guardedValue = map['recoveryFabricObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryProximityPlacementGroupId: (() { final guardedValue = map['recoveryProximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVirtualMachineScaleSetId: (() { final guardedValue = map['recoveryVirtualMachineScaleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rpoInSeconds: (() { final guardedValue = map['rpoInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      selectedRecoveryAzureNetworkId: (() { final guardedValue = map['selectedRecoveryAzureNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectedTfoAzureNetworkId: (() { final guardedValue = map['selectedTfoAzureNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testFailoverRecoveryFabricObjectId: (() { final guardedValue = map['testFailoverRecoveryFabricObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoAzureVMName: (() { final guardedValue = map['tfoAzureVMName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unprotectedDisks: (() { final guardedValue = map['unprotectedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AUnprotectedDiskDetailsResponse>(guardedValue, (value) => A2AUnprotectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmEncryptionType: pulumi.Input.fromValue(map['vmEncryptionType'] as String),
      vmNics: (() { final guardedValue = map['vmNics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMNicDetailsResponse>(guardedValue, (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmProtectionState: (() { final guardedValue = map['vmProtectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmProtectionStateDescription: (() { final guardedValue = map['vmProtectionStateDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSyncedConfigDetails: (() { final guardedValue = map['vmSyncedConfigDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureToAzureVmSyncedConfigDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

