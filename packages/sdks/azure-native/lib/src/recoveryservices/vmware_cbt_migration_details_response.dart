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
  final ApplianceMonitoringDetailsResponse applianceMonitoringDetails;
  /// The confidential VM key vault Id for ADE installation.
  final String? confidentialVmKeyVaultId;
  /// The data mover run as account Id.
  final String dataMoverRunAsAccountId;
  /// The delta sync progress percentage.
  final int deltaSyncProgressPercentage;
  /// The delta sync retry count.
  final double deltaSyncRetryCount;
  /// The firmware type.
  final String firmwareType;
  /// A value indicating the gateway operation details.
  final GatewayOperationDetailsResponse gatewayOperationDetails;
  /// The initial seeding progress percentage.
  final int initialSeedingProgressPercentage;
  /// The initial seeding retry count.
  final double initialSeedingRetryCount;
  /// Gets the instance type.
  /// Expected value is 'VMwareCbt'.
  final String instanceType;
  /// A value indicating whether checksum resync cycle is in progress.
  final String isCheckSumResyncCycle;
  /// The last recovery point Id.
  final String lastRecoveryPointId;
  /// The last recovery point received time.
  final String lastRecoveryPointReceived;
  /// License Type of the VM to be used.
  final String? licenseType;
  /// The license type for Linux VM's.
  final String? linuxLicenseType;
  /// The migration progress percentage.
  final int migrationProgressPercentage;
  /// The recovery point Id to which the VM was migrated.
  final String migrationRecoveryPointId;
  /// A value indicating the SRS operation name.
  final String operationName;
  /// The name of the OS on the VM.
  final String osName;
  /// The type of the OS on the VM.
  final String osType;
  /// A value indicating whether auto resync is to be done.
  final String? performAutoResync;
  /// The list of protected disks.
  final List<VMwareCbtProtectedDiskDetailsResponse>? protectedDisks;
  /// The resume progress percentage.
  final int resumeProgressPercentage;
  /// The resume retry count.
  final double resumeRetryCount;
  /// The resync progress percentage.
  final int resyncProgressPercentage;
  /// A value indicating whether resync is required.
  final String resyncRequired;
  /// The resync retry count.
  final double resyncRetryCount;
  /// The resync state.
  final String resyncState;
  /// The tags for the seed disks.
  final Map<String, String>? seedDiskTags;
  /// The snapshot run as account Id.
  final String snapshotRunAsAccountId;
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
  /// The tags for the target disks.
  final Map<String, String>? targetDiskTags;
  /// The target generation.
  final String targetGeneration;
  /// The target location.
  final String targetLocation;
  /// The target network Id.
  final String? targetNetworkId;
  /// The tags for the target NICs.
  final Map<String, String>? targetNicTags;
  /// The target proximity placement group Id.
  final String? targetProximityPlacementGroupId;
  /// The target resource group Id.
  final String? targetResourceGroupId;
  /// Target VM name.
  final String? targetVmName;
  /// The target VM security profile.
  final VMwareCbtSecurityProfilePropertiesResponse? targetVmSecurityProfile;
  /// The target VM size.
  final String? targetVmSize;
  /// The target VM tags.
  final Map<String, String>? targetVmTags;
  /// The test network Id.
  final String? testNetworkId;
  /// The network details.
  final List<VMwareCbtNicDetailsResponse>? vmNics;
  /// The ARM Id of the VM discovered in VMware.
  final String vmwareMachineId;

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
      'applianceMonitoringDetails': applianceMonitoringDetails.toMap(),
      'confidentialVmKeyVaultId': ?confidentialVmKeyVaultId,
      'dataMoverRunAsAccountId': dataMoverRunAsAccountId,
      'deltaSyncProgressPercentage': deltaSyncProgressPercentage,
      'deltaSyncRetryCount': deltaSyncRetryCount,
      'firmwareType': firmwareType,
      'gatewayOperationDetails': gatewayOperationDetails.toMap(),
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
      'protectedDisks': ?protectedDisks == null ? null : pulumi.Input.encodeList<VMwareCbtProtectedDiskDetailsResponse, Map<String, dynamic>>(protectedDisks!, (value) => value.toMap()),
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
      'targetVmSecurityProfile': ?targetVmSecurityProfile == null ? null : targetVmSecurityProfile!.toMap(),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?targetVmTags,
      'testNetworkId': ?testNetworkId,
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<VMwareCbtNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
      'vmwareMachineId': vmwareMachineId,
    };
  }

  factory VMwareCbtMigrationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareCbtMigrationDetailsResponse(
      applianceMonitoringDetails: ApplianceMonitoringDetailsResponse.fromMap((map['applianceMonitoringDetails'] as Map).cast<String, dynamic>()),
      confidentialVmKeyVaultId: map['confidentialVmKeyVaultId'] == null ? null : map['confidentialVmKeyVaultId'] as String,
      dataMoverRunAsAccountId: map['dataMoverRunAsAccountId'] as String,
      deltaSyncProgressPercentage: map['deltaSyncProgressPercentage'] as int,
      deltaSyncRetryCount: map['deltaSyncRetryCount'] as double,
      firmwareType: map['firmwareType'] as String,
      gatewayOperationDetails: GatewayOperationDetailsResponse.fromMap((map['gatewayOperationDetails'] as Map).cast<String, dynamic>()),
      initialSeedingProgressPercentage: map['initialSeedingProgressPercentage'] as int,
      initialSeedingRetryCount: map['initialSeedingRetryCount'] as double,
      instanceType: map['instanceType'] as String,
      isCheckSumResyncCycle: map['isCheckSumResyncCycle'] as String,
      lastRecoveryPointId: map['lastRecoveryPointId'] as String,
      lastRecoveryPointReceived: map['lastRecoveryPointReceived'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      linuxLicenseType: map['linuxLicenseType'] == null ? null : map['linuxLicenseType'] as String,
      migrationProgressPercentage: map['migrationProgressPercentage'] as int,
      migrationRecoveryPointId: map['migrationRecoveryPointId'] as String,
      operationName: map['operationName'] as String,
      osName: map['osName'] as String,
      osType: map['osType'] as String,
      performAutoResync: map['performAutoResync'] == null ? null : map['performAutoResync'] as String,
      protectedDisks: map['protectedDisks'] == null ? null : pulumi.Input.decodeList<VMwareCbtProtectedDiskDetailsResponse>(map['protectedDisks'], (value) => VMwareCbtProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      resumeProgressPercentage: map['resumeProgressPercentage'] as int,
      resumeRetryCount: map['resumeRetryCount'] as double,
      resyncProgressPercentage: map['resyncProgressPercentage'] as int,
      resyncRequired: map['resyncRequired'] as String,
      resyncRetryCount: map['resyncRetryCount'] as double,
      resyncState: map['resyncState'] as String,
      seedDiskTags: map['seedDiskTags'] == null ? null : (map['seedDiskTags'] as Map).cast<String, String>(),
      snapshotRunAsAccountId: map['snapshotRunAsAccountId'] as String,
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType'] as String,
      storageAccountId: map['storageAccountId'] as String,
      supportedOSVersions: map['supportedOSVersions'] == null ? null : (map['supportedOSVersions'] as List).cast<String>(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : map['targetAvailabilitySetId'] as String,
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : map['targetBootDiagnosticsStorageAccountId'] as String,
      targetDiskTags: map['targetDiskTags'] == null ? null : (map['targetDiskTags'] as Map).cast<String, String>(),
      targetGeneration: map['targetGeneration'] as String,
      targetLocation: map['targetLocation'] as String,
      targetNetworkId: map['targetNetworkId'] == null ? null : map['targetNetworkId'] as String,
      targetNicTags: map['targetNicTags'] == null ? null : (map['targetNicTags'] as Map).cast<String, String>(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : map['targetProximityPlacementGroupId'] as String,
      targetResourceGroupId: map['targetResourceGroupId'] == null ? null : map['targetResourceGroupId'] as String,
      targetVmName: map['targetVmName'] == null ? null : map['targetVmName'] as String,
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : VMwareCbtSecurityProfilePropertiesResponse.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>()),
      targetVmSize: map['targetVmSize'] == null ? null : map['targetVmSize'] as String,
      targetVmTags: map['targetVmTags'] == null ? null : (map['targetVmTags'] as Map).cast<String, String>(),
      testNetworkId: map['testNetworkId'] == null ? null : map['testNetworkId'] as String,
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<VMwareCbtNicDetailsResponse>(map['vmNics'], (value) => VMwareCbtNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmwareMachineId: map['vmwareMachineId'] as String,
    );
  }
}

