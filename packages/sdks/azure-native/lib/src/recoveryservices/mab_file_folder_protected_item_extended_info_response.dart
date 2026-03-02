// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information on the backed up item.
class MabFileFolderProtectedItemExtendedInfoResponse {
  /// Last time when the agent data synced to service.
  final pulumi.Input<String>? lastRefreshedAt;
  /// The oldest backup copy available.
  final pulumi.Input<String>? oldestRecoveryPoint;
  /// Number of backup copies associated with the backup item.
  final pulumi.Input<int>? recoveryPointCount;

  /// Creates a new [MabFileFolderProtectedItemExtendedInfoResponse].
  /// [lastRefreshedAt] Last time when the agent data synced to service.
  /// [oldestRecoveryPoint] The oldest backup copy available.
  /// [recoveryPointCount] Number of backup copies associated with the backup item.
  MabFileFolderProtectedItemExtendedInfoResponse({
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

  factory MabFileFolderProtectedItemExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return MabFileFolderProtectedItemExtendedInfoResponse(
      lastRefreshedAt: map['lastRefreshedAt'] == null ? null : (map['lastRefreshedAt']! as String).input(),
      oldestRecoveryPoint: map['oldestRecoveryPoint'] == null ? null : (map['oldestRecoveryPoint']! as String).input(),
      recoveryPointCount: map['recoveryPointCount'] == null ? null : (map['recoveryPointCount']! as int).input(),
    );
  }
}

