// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information on the backed up item.
class MabFileFolderProtectedItemExtendedInfo {
  /// Last time when the agent data synced to service.
  final pulumi.Input<String>? lastRefreshedAt;
  /// The oldest backup copy available.
  final pulumi.Input<String>? oldestRecoveryPoint;
  /// Number of backup copies associated with the backup item.
  final pulumi.Input<int>? recoveryPointCount;

  /// Creates a new [MabFileFolderProtectedItemExtendedInfo].
  /// [lastRefreshedAt] Last time when the agent data synced to service.
  /// [oldestRecoveryPoint] The oldest backup copy available.
  /// [recoveryPointCount] Number of backup copies associated with the backup item.
  MabFileFolderProtectedItemExtendedInfo({
    this.lastRefreshedAt,
    this.oldestRecoveryPoint,
    this.recoveryPointCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRefreshedAt': ?lastRefreshedAt,
      'oldestRecoveryPoint': ?oldestRecoveryPoint,
      'recoveryPointCount': ?recoveryPointCount,
    };
  }

  factory MabFileFolderProtectedItemExtendedInfo.fromMap(Map<String, dynamic> map) {
    return MabFileFolderProtectedItemExtendedInfo(
      lastRefreshedAt: (() { final guardedValue = map['lastRefreshedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oldestRecoveryPoint: (() { final guardedValue = map['oldestRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointCount: (() { final guardedValue = map['recoveryPointCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

