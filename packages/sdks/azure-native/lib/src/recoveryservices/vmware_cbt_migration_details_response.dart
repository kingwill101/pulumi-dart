// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_monitoring_details_response.dart';
import 'gateway_operation_details_response.dart';
import 'vmware_cbt_nic_details_response.dart';
import 'vmware_cbt_protected_disk_details_response.dart';
import 'vmware_cbt_security_profile_properties_response.dart';

/// VMwareCbt provider specific settings.
class VMwareCbtMigrationDetailsResponse {
  /// A value indicating the appliance monitoring details.
  final pulumi.Input<ApplianceMonitoringDetailsResponse> applianceMonitoringDetails;
  /// The confidential VM key vault Id for ADE installation.
  final pulumi.Input<String>? confidentialVmKeyVaultId;
  /// The data mover run as account Id.
  final pulumi.Input<String> dataMoverRunAsAccountId;
  /// The delta sync progress percentage.
  final pulumi.Input<int> deltaSyncProgressPercentage;
  /// The delta sync retry count.
  final pulumi.Input<double> deltaSyncRetryCount;
  /// The firmware type.
  final pulumi.Input<String> firmwareType;
  /// A value indicating the gateway operation details.
  final pulumi.Input<GatewayOperationDetailsResponse> gatewayOperationDetails;
  /// The initial seeding progress percentage.
  final pulumi.Input<int> initialSeedingProgressPercentage;
  /// The initial seeding retry count.
  final pulumi.Input<double> initialSeedingRetryCount;
  /// Gets the instance type.
  /// Expected value is 'VMwareCbt'.
  final pulumi.Input<String> instanceType;
  /// A value indicating whether checksum resync cycle is in progress.
  final pulumi.Input<String> isCheckSumResyncCycle;
  /// The last recovery point Id.
  final pulumi.Input<String> lastRecoveryPointId;
  /// The last recovery point received time.
  final pulumi.Input<String> lastRecoveryPointReceived;
  /// License Type of the VM to be used.
  final pulumi.Input<String>? licenseType;
  /// The license type for Linux VM's.
  final pulumi.Input<String>? linuxLicenseType;
  /// The migration progress percentage.
  final pulumi.Input<int> migrationProgressPercentage;
  /// The recovery point Id to which the VM was migrated.
  final pulumi.Input<String> migrationRecoveryPointId;
  /// A value indicating the SRS operation name.
  final pulumi.Input<String> operationName;
  /// The name of the OS on the VM.
  final pulumi.Input<String> osName;
  /// The type of the OS on the VM.
  final pulumi.Input<String> osType;
  /// A value indicating whether auto resync is to be done.
  final pulumi.Input<String>? performAutoResync;
  /// The list of protected disks.
  final pulumi.Input<List<VMwareCbtProtectedDiskDetailsResponse>>? protectedDisks;
  /// The resume progress percentage.
  final pulumi.Input<int> resumeProgressPercentage;
  /// The resume retry count.
  final pulumi.Input<double> resumeRetryCount;
  /// The resync progress percentage.
  final pulumi.Input<int> resyncProgressPercentage;
  /// A value indicating whether resync is required.
  final pulumi.Input<String> resyncRequired;
  /// The resync retry count.
  final pulumi.Input<double> resyncRetryCount;
  /// The resync state.
  final pulumi.Input<String> resyncState;
  /// The tags for the seed disks.
  final pulumi.Input<Map<String, String>>? seedDiskTags;
  /// The snapshot run as account Id.
  final pulumi.Input<String> snapshotRunAsAccountId;
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
  /// The tags for the target disks.
  final pulumi.Input<Map<String, String>>? targetDiskTags;
  /// The target generation.
  final pulumi.Input<String> targetGeneration;
  /// The target location.
  final pulumi.Input<String> targetLocation;
  /// The target network Id.
  final pulumi.Input<String>? targetNetworkId;
  /// The tags for the target NICs.
  final pulumi.Input<Map<String, String>>? targetNicTags;
  /// The target proximity placement group Id.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The target resource group Id.
  final pulumi.Input<String>? targetResourceGroupId;
  /// Target VM name.
  final pulumi.Input<String>? targetVmName;
  /// The target VM security profile.
  final pulumi.Input<VMwareCbtSecurityProfilePropertiesResponse>? targetVmSecurityProfile;
  /// The target VM size.
  final pulumi.Input<String>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>>? targetVmTags;
  /// The test network Id.
  final pulumi.Input<String>? testNetworkId;
  /// The network details.
  final pulumi.Input<List<VMwareCbtNicDetailsResponse>>? vmNics;
  /// The ARM Id of the VM discovered in VMware.
  final pulumi.Input<String> vmwareMachineId;

  /// Creates a new [VMwareCbtMigrationDetailsResponse].
  /// [applianceMonitoringDetails] A value indicating the appliance monitoring details.
  /// [confidentialVmKeyVaultId] The confidential VM key vault Id for ADE installation.
  /// [dataMoverRunAsAccountId] The data mover run as account Id.
  /// [deltaSyncProgressPercentage] The delta sync progress percentage.
  /// [deltaSyncRetryCount] The delta sync retry count.
  /// [firmwareType] The firmware type.
  /// [gatewayOperationDetails] A value indicating the gateway operation details.
  /// [initialSeedingProgressPercentage] The initial seeding progress percentage.
  /// [initialSeedingRetryCount] The initial seeding retry count.
  /// [instanceType] Gets the instance type.
  /// [isCheckSumResyncCycle] A value indicating whether checksum resync cycle is in progress.
  /// [lastRecoveryPointId] The last recovery point Id.
  /// [lastRecoveryPointReceived] The last recovery point received time.
  /// [licenseType] License Type of the VM to be used.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [migrationProgressPercentage] The migration progress percentage.
  /// [migrationRecoveryPointId] The recovery point Id to which the VM was migrated.
  /// [operationName] A value indicating the SRS operation name.
  /// [osName] The name of the OS on the VM.
  /// [osType] The type of the OS on the VM.
  /// [performAutoResync] A value indicating whether auto resync is to be done.
  /// [protectedDisks] The list of protected disks.
  /// [resumeProgressPercentage] The resume progress percentage.
  /// [resumeRetryCount] The resume retry count.
  /// [resyncProgressPercentage] The resync progress percentage.
  /// [resyncRequired] A value indicating whether resync is required.
  /// [resyncRetryCount] The resync retry count.
  /// [resyncState] The resync state.
  /// [seedDiskTags] The tags for the seed disks.
  /// [snapshotRunAsAccountId] The snapshot run as account Id.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [storageAccountId] The replication storage account ARM Id. This is applicable only for the blob based replication test hook.
  /// [supportedOSVersions] A value indicating the inplace OS Upgrade version.
  /// [targetAvailabilitySetId] The target availability set Id.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetBootDiagnosticsStorageAccountId] The target boot diagnostics storage account ARM Id.
  /// [targetDiskTags] The tags for the target disks.
  /// [targetGeneration] The target generation.
  /// [targetLocation] The target location.
  /// [targetNetworkId] The target network Id.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetResourceGroupId] The target resource group Id.
  /// [targetVmName] Target VM name.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmSize] The target VM size.
  /// [targetVmTags] The target VM tags.
  /// [testNetworkId] The test network Id.
  /// [vmNics] The network details.
  /// [vmwareMachineId] The ARM Id of the VM discovered in VMware.
  VMwareCbtMigrationDetailsResponse({
    required this.applianceMonitoringDetails,
    this.confidentialVmKeyVaultId,
    required this.dataMoverRunAsAccountId,
    required this.deltaSyncProgressPercentage,
    required this.deltaSyncRetryCount,
    required this.firmwareType,
    required this.gatewayOperationDetails,
    required this.initialSeedingProgressPercentage,
    required this.initialSeedingRetryCount,
    required this.instanceType,
    required this.isCheckSumResyncCycle,
    required this.lastRecoveryPointId,
    required this.lastRecoveryPointReceived,
    this.licenseType,
    this.linuxLicenseType,
    required this.migrationProgressPercentage,
    required this.migrationRecoveryPointId,
    required this.operationName,
    required this.osName,
    required this.osType,
    this.performAutoResync,
    this.protectedDisks,
    required this.resumeProgressPercentage,
    required this.resumeRetryCount,
    required this.resyncProgressPercentage,
    required this.resyncRequired,
    required this.resyncRetryCount,
    required this.resyncState,
    this.seedDiskTags,
    required this.snapshotRunAsAccountId,
    this.sqlServerLicenseType,
    required this.storageAccountId,
    this.supportedOSVersions,
    this.targetAvailabilitySetId,
    this.targetAvailabilityZone,
    this.targetBootDiagnosticsStorageAccountId,
    this.targetDiskTags,
    required this.targetGeneration,
    required this.targetLocation,
    this.targetNetworkId,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    this.targetResourceGroupId,
    this.targetVmName,
    this.targetVmSecurityProfile,
    this.targetVmSize,
    this.targetVmTags,
    this.testNetworkId,
    this.vmNics,
    required this.vmwareMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceMonitoringDetails': pulumi.Input.mapInputValue<ApplianceMonitoringDetailsResponse, Map<String, dynamic>>(applianceMonitoringDetails, (value) => value.toMap()),
      'confidentialVmKeyVaultId': ?confidentialVmKeyVaultId,
      'dataMoverRunAsAccountId': dataMoverRunAsAccountId,
      'deltaSyncProgressPercentage': deltaSyncProgressPercentage,
      'deltaSyncRetryCount': deltaSyncRetryCount,
      'firmwareType': firmwareType,
      'gatewayOperationDetails': pulumi.Input.mapInputValue<GatewayOperationDetailsResponse, Map<String, dynamic>>(gatewayOperationDetails, (value) => value.toMap()),
      'initialSeedingProgressPercentage': initialSeedingProgressPercentage,
      'initialSeedingRetryCount': initialSeedingRetryCount,
      'instanceType': instanceType,
      'isCheckSumResyncCycle': isCheckSumResyncCycle,
      'lastRecoveryPointId': lastRecoveryPointId,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'migrationProgressPercentage': migrationProgressPercentage,
      'migrationRecoveryPointId': migrationRecoveryPointId,
      'operationName': operationName,
      'osName': osName,
      'osType': osType,
      'performAutoResync': ?performAutoResync,
      'protectedDisks': ?pulumi.Input.mapOptionalInputValue<List<VMwareCbtProtectedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedDisks, (value) => pulumi.Input.encodeList<VMwareCbtProtectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resumeProgressPercentage': resumeProgressPercentage,
      'resumeRetryCount': resumeRetryCount,
      'resyncProgressPercentage': resyncProgressPercentage,
      'resyncRequired': resyncRequired,
      'resyncRetryCount': resyncRetryCount,
      'resyncState': resyncState,
      'seedDiskTags': ?seedDiskTags,
      'snapshotRunAsAccountId': snapshotRunAsAccountId,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'storageAccountId': storageAccountId,
      'supportedOSVersions': ?supportedOSVersions,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetBootDiagnosticsStorageAccountId': ?targetBootDiagnosticsStorageAccountId,
      'targetDiskTags': ?targetDiskTags,
      'targetGeneration': targetGeneration,
      'targetLocation': targetLocation,
      'targetNetworkId': ?targetNetworkId,
      'targetNicTags': ?targetNicTags,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetResourceGroupId': ?targetResourceGroupId,
      'targetVmName': ?targetVmName,
      'targetVmSecurityProfile': ?pulumi.Input.mapOptionalInputValue<VMwareCbtSecurityProfilePropertiesResponse, Map<String, dynamic>>(targetVmSecurityProfile, (value) => value.toMap()),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?targetVmTags,
      'testNetworkId': ?testNetworkId,
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<VMwareCbtNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<VMwareCbtNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmwareMachineId': vmwareMachineId,
    };
  }

  factory VMwareCbtMigrationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareCbtMigrationDetailsResponse(
      applianceMonitoringDetails: (ApplianceMonitoringDetailsResponse.fromMap((map['applianceMonitoringDetails'] as Map).cast<String, dynamic>())).input(),
      confidentialVmKeyVaultId: map['confidentialVmKeyVaultId'] == null ? null : (map['confidentialVmKeyVaultId']! as String).input(),
      dataMoverRunAsAccountId: (map['dataMoverRunAsAccountId'] as String).input(),
      deltaSyncProgressPercentage: (map['deltaSyncProgressPercentage'] as int).input(),
      deltaSyncRetryCount: (map['deltaSyncRetryCount'] as double).input(),
      firmwareType: (map['firmwareType'] as String).input(),
      gatewayOperationDetails: (GatewayOperationDetailsResponse.fromMap((map['gatewayOperationDetails'] as Map).cast<String, dynamic>())).input(),
      initialSeedingProgressPercentage: (map['initialSeedingProgressPercentage'] as int).input(),
      initialSeedingRetryCount: (map['initialSeedingRetryCount'] as double).input(),
      instanceType: (map['instanceType'] as String).input(),
      isCheckSumResyncCycle: (map['isCheckSumResyncCycle'] as String).input(),
      lastRecoveryPointId: (map['lastRecoveryPointId'] as String).input(),
      lastRecoveryPointReceived: (map['lastRecoveryPointReceived'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      linuxLicenseType: map['linuxLicenseType'] == null ? null : (map['linuxLicenseType']! as String).input(),
      migrationProgressPercentage: (map['migrationProgressPercentage'] as int).input(),
      migrationRecoveryPointId: (map['migrationRecoveryPointId'] as String).input(),
      operationName: (map['operationName'] as String).input(),
      osName: (map['osName'] as String).input(),
      osType: (map['osType'] as String).input(),
      performAutoResync: map['performAutoResync'] == null ? null : (map['performAutoResync']! as String).input(),
      protectedDisks: map['protectedDisks'] == null ? null : (pulumi.Input.decodeList<VMwareCbtProtectedDiskDetailsResponse>(map['protectedDisks']!, (value) => VMwareCbtProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resumeProgressPercentage: (map['resumeProgressPercentage'] as int).input(),
      resumeRetryCount: (map['resumeRetryCount'] as double).input(),
      resyncProgressPercentage: (map['resyncProgressPercentage'] as int).input(),
      resyncRequired: (map['resyncRequired'] as String).input(),
      resyncRetryCount: (map['resyncRetryCount'] as double).input(),
      resyncState: (map['resyncState'] as String).input(),
      seedDiskTags: map['seedDiskTags'] == null ? null : ((map['seedDiskTags']! as Map).cast<String, String>()).input(),
      snapshotRunAsAccountId: (map['snapshotRunAsAccountId'] as String).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType']! as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      supportedOSVersions: map['supportedOSVersions'] == null ? null : ((map['supportedOSVersions']! as List).cast<String>()).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId']! as String).input(),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : (map['targetAvailabilityZone']! as String).input(),
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : (map['targetBootDiagnosticsStorageAccountId']! as String).input(),
      targetDiskTags: map['targetDiskTags'] == null ? null : ((map['targetDiskTags']! as Map).cast<String, String>()).input(),
      targetGeneration: (map['targetGeneration'] as String).input(),
      targetLocation: (map['targetLocation'] as String).input(),
      targetNetworkId: map['targetNetworkId'] == null ? null : (map['targetNetworkId']! as String).input(),
      targetNicTags: map['targetNicTags'] == null ? null : ((map['targetNicTags']! as Map).cast<String, String>()).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId']! as String).input(),
      targetResourceGroupId: map['targetResourceGroupId'] == null ? null : (map['targetResourceGroupId']! as String).input(),
      targetVmName: map['targetVmName'] == null ? null : (map['targetVmName']! as String).input(),
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : (VMwareCbtSecurityProfilePropertiesResponse.fromMap((map['targetVmSecurityProfile']! as Map).cast<String, dynamic>())).input(),
      targetVmSize: map['targetVmSize'] == null ? null : (map['targetVmSize']! as String).input(),
      targetVmTags: map['targetVmTags'] == null ? null : ((map['targetVmTags']! as Map).cast<String, String>()).input(),
      testNetworkId: map['testNetworkId'] == null ? null : (map['testNetworkId']! as String).input(),
      vmNics: map['vmNics'] == null ? null : (pulumi.Input.decodeList<VMwareCbtNicDetailsResponse>(map['vmNics']!, (value) => VMwareCbtNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmwareMachineId: (map['vmwareMachineId'] as String).input(),
    );
  }
}

