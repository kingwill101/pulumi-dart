// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information of DPM Protected item.
class DPMProtectedItemExtendedInfo {
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

  /// Creates a new [DPMProtectedItemExtendedInfo].
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
  DPMProtectedItemExtendedInfo({
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

  factory DPMProtectedItemExtendedInfo.fromMap(Map<String, dynamic> map) {
    return DPMProtectedItemExtendedInfo(
      diskStorageUsedInBytes: (() { final guardedValue = map['diskStorageUsedInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCollocated: (() { final guardedValue = map['isCollocated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPresentOnCloud: (() { final guardedValue = map['isPresentOnCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastBackupStatus: (() { final guardedValue = map['lastBackupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRefreshedAt: (() { final guardedValue = map['lastRefreshedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oldestRecoveryPoint: (() { final guardedValue = map['oldestRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onPremiseLatestRecoveryPoint: (() { final guardedValue = map['onPremiseLatestRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onPremiseOldestRecoveryPoint: (() { final guardedValue = map['onPremiseOldestRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onPremiseRecoveryPointCount: (() { final guardedValue = map['onPremiseRecoveryPointCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protectableObjectLoadPath: (() { final guardedValue = map['protectableObjectLoadPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      protected: (() { final guardedValue = map['protected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protectionGroupName: (() { final guardedValue = map['protectionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointCount: (() { final guardedValue = map['recoveryPointCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalDiskStorageSizeInBytes: (() { final guardedValue = map['totalDiskStorageSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

