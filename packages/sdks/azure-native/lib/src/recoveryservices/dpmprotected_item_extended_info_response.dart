// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information of DPM Protected item.
class DPMProtectedItemExtendedInfoResponse {
  /// Used Disk storage in bytes.
  final pulumi.Input<String>? diskStorageUsedInBytes;
  /// To check if backup item is collocated.
  final pulumi.Input<bool>? isCollocated;
  /// To check if backup item is cloud protected.
  final pulumi.Input<bool>? isPresentOnCloud;
  /// Last backup status information on backup item.
  final pulumi.Input<String>? lastBackupStatus;
  /// Last refresh time on backup item.
  final pulumi.Input<String>? lastRefreshedAt;
  /// Oldest cloud recovery point time.
  final pulumi.Input<String>? oldestRecoveryPoint;
  /// latest disk recovery point time.
  final pulumi.Input<String>? onPremiseLatestRecoveryPoint;
  /// Oldest disk recovery point time.
  final pulumi.Input<String>? onPremiseOldestRecoveryPoint;
  /// disk recovery point count.
  final pulumi.Input<int>? onPremiseRecoveryPointCount;
  /// Attribute to provide information on various DBs.
  final pulumi.Input<Map<String, String>>? protectableObjectLoadPath;
  /// To check if backup item is disk protected.
  final pulumi.Input<bool>? protected;
  /// Protection group name of the backup item.
  final pulumi.Input<String>? protectionGroupName;
  /// cloud recovery point count.
  final pulumi.Input<int>? recoveryPointCount;
  /// total Disk storage in bytes.
  final pulumi.Input<String>? totalDiskStorageSizeInBytes;

  /// Creates a new [DPMProtectedItemExtendedInfoResponse].
  /// [diskStorageUsedInBytes] Used Disk storage in bytes.
  /// [isCollocated] To check if backup item is collocated.
  /// [isPresentOnCloud] To check if backup item is cloud protected.
  /// [lastBackupStatus] Last backup status information on backup item.
  /// [lastRefreshedAt] Last refresh time on backup item.
  /// [oldestRecoveryPoint] Oldest cloud recovery point time.
  /// [onPremiseLatestRecoveryPoint] latest disk recovery point time.
  /// [onPremiseOldestRecoveryPoint] Oldest disk recovery point time.
  /// [onPremiseRecoveryPointCount] disk recovery point count.
  /// [protectableObjectLoadPath] Attribute to provide information on various DBs.
  /// [protected] To check if backup item is disk protected.
  /// [protectionGroupName] Protection group name of the backup item.
  /// [recoveryPointCount] cloud recovery point count.
  /// [totalDiskStorageSizeInBytes] total Disk storage in bytes.
  DPMProtectedItemExtendedInfoResponse({
    this.diskStorageUsedInBytes,
    this.isCollocated,
    this.isPresentOnCloud,
    this.lastBackupStatus,
    this.lastRefreshedAt,
    this.oldestRecoveryPoint,
    this.onPremiseLatestRecoveryPoint,
    this.onPremiseOldestRecoveryPoint,
    this.onPremiseRecoveryPointCount,
    this.protectableObjectLoadPath,
    this.protected,
    this.protectionGroupName,
    this.recoveryPointCount,
    this.totalDiskStorageSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskStorageUsedInBytes': ?diskStorageUsedInBytes,
      'isCollocated': ?isCollocated,
      'isPresentOnCloud': ?isPresentOnCloud,
      'lastBackupStatus': ?lastBackupStatus,
      'lastRefreshedAt': ?lastRefreshedAt,
      'oldestRecoveryPoint': ?oldestRecoveryPoint,
      'onPremiseLatestRecoveryPoint': ?onPremiseLatestRecoveryPoint,
      'onPremiseOldestRecoveryPoint': ?onPremiseOldestRecoveryPoint,
      'onPremiseRecoveryPointCount': ?onPremiseRecoveryPointCount,
      'protectableObjectLoadPath': ?protectableObjectLoadPath,
      'protected': ?protected,
      'protectionGroupName': ?protectionGroupName,
      'recoveryPointCount': ?recoveryPointCount,
      'totalDiskStorageSizeInBytes': ?totalDiskStorageSizeInBytes,
    };
  }

  factory DPMProtectedItemExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return DPMProtectedItemExtendedInfoResponse(
      diskStorageUsedInBytes: map['diskStorageUsedInBytes'] == null ? null : (map['diskStorageUsedInBytes']! as String).input(),
      isCollocated: map['isCollocated'] == null ? null : (map['isCollocated']! as bool).input(),
      isPresentOnCloud: map['isPresentOnCloud'] == null ? null : (map['isPresentOnCloud']! as bool).input(),
      lastBackupStatus: map['lastBackupStatus'] == null ? null : (map['lastBackupStatus']! as String).input(),
      lastRefreshedAt: map['lastRefreshedAt'] == null ? null : (map['lastRefreshedAt']! as String).input(),
      oldestRecoveryPoint: map['oldestRecoveryPoint'] == null ? null : (map['oldestRecoveryPoint']! as String).input(),
      onPremiseLatestRecoveryPoint: map['onPremiseLatestRecoveryPoint'] == null ? null : (map['onPremiseLatestRecoveryPoint']! as String).input(),
      onPremiseOldestRecoveryPoint: map['onPremiseOldestRecoveryPoint'] == null ? null : (map['onPremiseOldestRecoveryPoint']! as String).input(),
      onPremiseRecoveryPointCount: map['onPremiseRecoveryPointCount'] == null ? null : (map['onPremiseRecoveryPointCount']! as int).input(),
      protectableObjectLoadPath: map['protectableObjectLoadPath'] == null ? null : ((map['protectableObjectLoadPath']! as Map).cast<String, String>()).input(),
      protected: map['protected'] == null ? null : (map['protected']! as bool).input(),
      protectionGroupName: map['protectionGroupName'] == null ? null : (map['protectionGroupName']! as String).input(),
      recoveryPointCount: map['recoveryPointCount'] == null ? null : (map['recoveryPointCount']! as int).input(),
      totalDiskStorageSizeInBytes: map['totalDiskStorageSizeInBytes'] == null ? null : (map['totalDiskStorageSizeInBytes']! as String).input(),
    );
  }
}

