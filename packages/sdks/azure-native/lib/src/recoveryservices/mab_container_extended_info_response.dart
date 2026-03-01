// ignore_for_file: unused_element, unnecessary_cast


/// Additional information of the container.
class MabContainerExtendedInfoResponse {
  /// Type of backup items associated with this container.
  final String? backupItemType;
  /// List of backup items associated with this container.
  final List<String>? backupItems;
  /// Latest backup status of this container.
  final String? lastBackupStatus;
  /// Time stamp when this container was refreshed.
  final String? lastRefreshedAt;
  /// Backup policy associated with this container.
  final String? policyName;

  /// Creates a new [MabContainerExtendedInfoResponse].
  /// [backupItemType] Type of backup items associated with this container.
  /// [backupItems] List of backup items associated with this container.
  /// [lastBackupStatus] Latest backup status of this container.
  /// [lastRefreshedAt] Time stamp when this container was refreshed.
  /// [policyName] Backup policy associated with this container.
  MabContainerExtendedInfoResponse({
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
      backupItemType: map['backupItemType'] == null ? null : map['backupItemType'] as String,
      backupItems: map['backupItems'] == null ? null : (map['backupItems'] as List).cast<String>(),
      lastBackupStatus: map['lastBackupStatus'] == null ? null : map['lastBackupStatus'] as String,
      lastRefreshedAt: map['lastRefreshedAt'] == null ? null : map['lastRefreshedAt'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
    );
  }
}

