// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackupPolicy.
class GetBackupPolicyResult {
  /// The name of the NetApp account in which the NetApp Policy exists.
  final String? accountName;
  /// The number of daily backups to keep.
  final int? dailyBackupsToKeep;
  /// Whether the Backup Policy is enabled.
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// NetApp Backup Policy location.
  final String? location;
  /// The number of monthly backups to keep.
  final int? monthlyBackupsToKeep;
  final String? name;
  final String? resourceGroupName;
  /// List of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The number of weekly backups to keep.
  final int? weeklyBackupsToKeep;

  /// Creates a new [GetBackupPolicyResult].
  /// [accountName] The name of the NetApp account in which the NetApp Policy exists.
  /// [dailyBackupsToKeep] The number of daily backups to keep.
  /// [enabled] Whether the Backup Policy is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] NetApp Backup Policy location.
  /// [monthlyBackupsToKeep] The number of monthly backups to keep.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] List of tags assigned to the resource.
  /// [weeklyBackupsToKeep] The number of weekly backups to keep.
  const GetBackupPolicyResult({
    this.accountName,
    this.dailyBackupsToKeep,
    this.enabled,
    this.id,
    this.location,
    this.monthlyBackupsToKeep,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'enabled': ?enabled,
      'id': ?id,
      'location': ?location,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory GetBackupPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dailyBackupsToKeep: (() { final guardedValue = map['dailyBackupsToKeep']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monthlyBackupsToKeep: (() { final guardedValue = map['monthlyBackupsToKeep']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      weeklyBackupsToKeep: (() { final guardedValue = map['weeklyBackupsToKeep']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
