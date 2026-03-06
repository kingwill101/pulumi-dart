// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information of the container.
class MabContainerExtendedInfoResponse {
  /// Type of backup items associated with this container.
  final pulumi.Input<String>? backupItemType;
  /// List of backup items associated with this container.
  final pulumi.Input<List<String>>? backupItems;
  /// Latest backup status of this container.
  final pulumi.Input<String>? lastBackupStatus;
  /// Time stamp when this container was refreshed.
  final pulumi.Input<String>? lastRefreshedAt;
  /// Backup policy associated with this container.
  final pulumi.Input<String>? policyName;

  /// Creates a new [MabContainerExtendedInfoResponse].
  /// [backupItemType] Type of backup items associated with this container.
  /// [backupItems] List of backup items associated with this container.
  /// [lastBackupStatus] Latest backup status of this container.
  /// [lastRefreshedAt] Time stamp when this container was refreshed.
  /// [policyName] Backup policy associated with this container.
  const MabContainerExtendedInfoResponse({
    this.backupItemType,
    this.backupItems,
    this.lastBackupStatus,
    this.lastRefreshedAt,
    this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupItemType': ?backupItemType,
      'backupItems': ?backupItems,
      'lastBackupStatus': ?lastBackupStatus,
      'lastRefreshedAt': ?lastRefreshedAt,
      'policyName': ?policyName,
    };
  }

  factory MabContainerExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return MabContainerExtendedInfoResponse(
      backupItemType: (() { final guardedValue = map['backupItemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupItems: (() { final guardedValue = map['backupItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastBackupStatus: (() { final guardedValue = map['lastBackupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRefreshedAt: (() { final guardedValue = map['lastRefreshedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

