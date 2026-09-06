// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackupShortTermRetentionPolicy.
class GetBackupShortTermRetentionPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The differential backup interval in hours. This is how many interval hours between each differential backup will be supported. This is only applicable to live databases but not dropped databases.
  final int? diffBackupIntervalInHours;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  final int? retentionDays;
  /// Resource type.
  final String? type;

  /// Creates a new [GetBackupShortTermRetentionPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [diffBackupIntervalInHours] The differential backup interval in hours. This is how many interval hours between each differential backup will be supported. This is only applicable to live databases but not dropped databases.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [retentionDays] The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  /// [type] Resource type.
  const GetBackupShortTermRetentionPolicyResult({
    this.azureApiVersion,
    this.diffBackupIntervalInHours,
    this.id,
    this.name,
    this.retentionDays,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'diffBackupIntervalInHours': ?diffBackupIntervalInHours,
      'id': ?id,
      'name': ?name,
      'retentionDays': ?retentionDays,
      'type': ?type,
    };
  }

  factory GetBackupShortTermRetentionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupShortTermRetentionPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diffBackupIntervalInHours: (() { final guardedValue = map['diffBackupIntervalInHours']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
