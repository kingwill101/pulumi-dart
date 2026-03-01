// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackupShortTermRetentionPolicy.
class GetBackupShortTermRetentionPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The differential backup interval in hours. This is how many interval hours between each differential backup will be supported. This is only applicable to live databases but not dropped databases.
  final int? diffBackupIntervalInHours;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  final int? retentionDays;
  /// Resource type.
  final String type;

  /// Creates a new [GetBackupShortTermRetentionPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [diffBackupIntervalInHours] The differential backup interval in hours. This is how many interval hours between each differential backup will be supported. This is only applicable to live databases but not dropped databases.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [retentionDays] The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  /// [type] Resource type.
  GetBackupShortTermRetentionPolicyResult({
    required this.azureApiVersion,
    this.diffBackupIntervalInHours,
    required this.id,
    required this.name,
    this.retentionDays,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'diffBackupIntervalInHours': ?diffBackupIntervalInHours,
      'id': id,
      'name': name,
      'retentionDays': ?retentionDays,
      'type': type,
    };
  }

  factory GetBackupShortTermRetentionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupShortTermRetentionPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      diffBackupIntervalInHours: map['diffBackupIntervalInHours'] == null ? null : map['diffBackupIntervalInHours'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      type: map['type'] as String,
    );
  }
}

