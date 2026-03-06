// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackupPolicy.
class GetBackupPolicyResult {
  /// The name of the NetApp account in which the NetApp Policy exists.
  final String accountName;
  /// The number of daily backups to keep.
  final int dailyBackupsToKeep;
  /// Whether the Backup Policy is enabled.
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// NetApp Backup Policy location.
  final String location;
  /// The number of monthly backups to keep.
  final int monthlyBackupsToKeep;
  final String name;
  final String resourceGroupName;
  /// List of tags assigned to the resource.
  final Map<String, String> tags;
  /// The number of weekly backups to keep.
  final int weeklyBackupsToKeep;

  /// Creates a new [GetBackupPolicyResult].
  /// [accountName] The name of the NetApp account in which the NetApp Policy exists.
  /// [dailyBackupsToKeep] The number of daily backups to keep.
  /// [enabled] Whether the Backup Policy is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] NetApp Backup Policy location.
  /// [monthlyBackupsToKeep] The number of monthly backups to keep.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] List of tags assigned to the resource.
  /// [weeklyBackupsToKeep] The number of weekly backups to keep.
  const GetBackupPolicyResult({
    required this.accountName,
    required this.dailyBackupsToKeep,
    required this.enabled,
    required this.id,
    required this.location,
    required this.monthlyBackupsToKeep,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dailyBackupsToKeep': dailyBackupsToKeep,
      'enabled': enabled,
      'id': id,
      'location': location,
      'monthlyBackupsToKeep': monthlyBackupsToKeep,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'weeklyBackupsToKeep': weeklyBackupsToKeep,
    };
  }

  factory GetBackupPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyResult(
      accountName: map['accountName'] as String,
      dailyBackupsToKeep: map['dailyBackupsToKeep'] as int,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      monthlyBackupsToKeep: map['monthlyBackupsToKeep'] as int,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      weeklyBackupsToKeep: map['weeklyBackupsToKeep'] as int,
    );
  }
}

