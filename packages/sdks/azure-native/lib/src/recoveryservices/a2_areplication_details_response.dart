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
      agentCertificateExpiryDate: (map['agentCertificateExpiryDate'] as String).input(),
      agentExpiryDate: map['agentExpiryDate'] == null ? null : (map['agentExpiryDate']! as String).input(),
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion']! as String).input(),
      autoProtectionOfDataDisk: map['autoProtectionOfDataDisk'] == null ? null : (map['autoProtectionOfDataDisk']! as String).input(),
      churnOptionSelected: (map['churnOptionSelected'] as String).input(),
      fabricObjectId: map['fabricObjectId'] == null ? null : (map['fabricObjectId']! as String).input(),
      initialPrimaryExtendedLocation: map['initialPrimaryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['initialPrimaryExtendedLocation']! as Map).cast<String, dynamic>())).input(),
      initialPrimaryFabricLocation: (map['initialPrimaryFabricLocation'] as String).input(),
      initialPrimaryZone: (map['initialPrimaryZone'] as String).input(),
      initialRecoveryExtendedLocation: map['initialRecoveryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['initialRecoveryExtendedLocation']! as Map).cast<String, dynamic>())).input(),
      initialRecoveryFabricLocation: (map['initialRecoveryFabricLocation'] as String).input(),
      initialRecoveryZone: (map['initialRecoveryZone'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      isClusterInfraReady: map['isClusterInfraReady'] == null ? null : (map['isClusterInfraReady']! as bool).input(),
      isReplicationAgentCertificateUpdateRequired: map['isReplicationAgentCertificateUpdateRequired'] == null ? null : (map['isReplicationAgentCertificateUpdateRequired']! as bool).input(),
      isReplicationAgentUpdateRequired: map['isReplicationAgentUpdateRequired'] == null ? null : (map['isReplicationAgentUpdateRequired']! as bool).input(),
      lastHeartbeat: map['lastHeartbeat'] == null ? null : (map['lastHeartbeat']! as String).input(),
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : (map['lastRpoCalculatedTime']! as String).input(),
      lifecycleId: map['lifecycleId'] == null ? null : (map['lifecycleId']! as String).input(),
      managementId: map['managementId'] == null ? null : (map['managementId']! as String).input(),
      monitoringJobType: map['monitoringJobType'] == null ? null : (map['monitoringJobType']! as String).input(),
      monitoringPercentageCompletion: map['monitoringPercentageCompletion'] == null ? null : (map['monitoringPercentageCompletion']! as int).input(),
      multiVmGroupCreateOption: map['multiVmGroupCreateOption'] == null ? null : (map['multiVmGroupCreateOption']! as String).input(),
      multiVmGroupId: map['multiVmGroupId'] == null ? null : (map['multiVmGroupId']! as String).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      primaryAvailabilityZone: map['primaryAvailabilityZone'] == null ? null : (map['primaryAvailabilityZone']! as String).input(),
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['primaryExtendedLocation']! as Map).cast<String, dynamic>())).input(),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : (map['primaryFabricLocation']! as String).input(),
      protectedDisks: map['protectedDisks'] == null ? null : (pulumi.Input.decodeList<A2AProtectedDiskDetailsResponse>(map['protectedDisks']!, (value) => A2AProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectedManagedDisks: map['protectedManagedDisks'] == null ? null : (pulumi.Input.decodeList<A2AProtectedManagedDiskDetailsResponse>(map['protectedManagedDisks']!, (value) => A2AProtectedManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectionClusterId: map['protectionClusterId'] == null ? null : (map['protectionClusterId']! as String).input(),
      recoveryAvailabilitySet: map['recoveryAvailabilitySet'] == null ? null : (map['recoveryAvailabilitySet']! as String).input(),
      recoveryAvailabilityZone: map['recoveryAvailabilityZone'] == null ? null : (map['recoveryAvailabilityZone']! as String).input(),
      recoveryAzureGeneration: (map['recoveryAzureGeneration'] as String).input(),
      recoveryAzureResourceGroupId: map['recoveryAzureResourceGroupId'] == null ? null : (map['recoveryAzureResourceGroupId']! as String).input(),
      recoveryAzureVMName: map['recoveryAzureVMName'] == null ? null : (map['recoveryAzureVMName']! as String).input(),
      recoveryAzureVMSize: map['recoveryAzureVMSize'] == null ? null : (map['recoveryAzureVMSize']! as String).input(),
      recoveryBootDiagStorageAccountId: map['recoveryBootDiagStorageAccountId'] == null ? null : (map['recoveryBootDiagStorageAccountId']! as String).input(),
      recoveryCapacityReservationGroupId: map['recoveryCapacityReservationGroupId'] == null ? null : (map['recoveryCapacityReservationGroupId']! as String).input(),
      recoveryCloudService: map['recoveryCloudService'] == null ? null : (map['recoveryCloudService']! as String).input(),
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation']! as Map).cast<String, dynamic>())).input(),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : (map['recoveryFabricLocation']! as String).input(),
      recoveryFabricObjectId: map['recoveryFabricObjectId'] == null ? null : (map['recoveryFabricObjectId']! as String).input(),
      recoveryProximityPlacementGroupId: map['recoveryProximityPlacementGroupId'] == null ? null : (map['recoveryProximityPlacementGroupId']! as String).input(),
      recoveryVirtualMachineScaleSetId: map['recoveryVirtualMachineScaleSetId'] == null ? null : (map['recoveryVirtualMachineScaleSetId']! as String).input(),
      rpoInSeconds: map['rpoInSeconds'] == null ? null : (map['rpoInSeconds']! as double).input(),
      selectedRecoveryAzureNetworkId: map['selectedRecoveryAzureNetworkId'] == null ? null : (map['selectedRecoveryAzureNetworkId']! as String).input(),
      selectedTfoAzureNetworkId: map['selectedTfoAzureNetworkId'] == null ? null : (map['selectedTfoAzureNetworkId']! as String).input(),
      testFailoverRecoveryFabricObjectId: map['testFailoverRecoveryFabricObjectId'] == null ? null : (map['testFailoverRecoveryFabricObjectId']! as String).input(),
      tfoAzureVMName: map['tfoAzureVMName'] == null ? null : (map['tfoAzureVMName']! as String).input(),
      unprotectedDisks: map['unprotectedDisks'] == null ? null : (pulumi.Input.decodeList<A2AUnprotectedDiskDetailsResponse>(map['unprotectedDisks']!, (value) => A2AUnprotectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmEncryptionType: (map['vmEncryptionType'] as String).input(),
      vmNics: map['vmNics'] == null ? null : (pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics']!, (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmProtectionState: map['vmProtectionState'] == null ? null : (map['vmProtectionState']! as String).input(),
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : (map['vmProtectionStateDescription']! as String).input(),
      vmSyncedConfigDetails: map['vmSyncedConfigDetails'] == null ? null : (AzureToAzureVmSyncedConfigDetailsResponse.fromMap((map['vmSyncedConfigDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

