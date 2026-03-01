// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackupLongTermRetentionPolicy.
class GetBackupLongTermRetentionPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format.
  final String? monthlyRetention;
  /// Resource name.
  final String name;
  /// Resource type.
  final String type;
  /// The week of year to take the yearly backup in an ISO 8601 format.
  final int? weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format.
  final String? weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format.
  final String? yearlyRetention;

  /// Creates a new [GetBackupLongTermRetentionPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format.
  /// [name] Resource name.
  /// [type] Resource type.
  /// [weekOfYear] The week of year to take the yearly backup in an ISO 8601 format.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format.
  GetBackupLongTermRetentionPolicyResult({
    required this.azureApiVersion,
    required this.id,
    this.monthlyRetention,
    required this.name,
    required this.type,
    this.weekOfYear,
    this.weeklyRetention,
    this.yearlyRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'monthlyRetention': ?monthlyRetention,
      'name': name,
      'type': type,
      'weekOfYear': ?weekOfYear,
      'weeklyRetention': ?weeklyRetention,
      'yearlyRetention': ?yearlyRetention,
    };
  }

  factory GetBackupLongTermRetentionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupLongTermRetentionPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      monthlyRetention: map['monthlyRetention'] == null ? null : map['monthlyRetention'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      weekOfYear: map['weekOfYear'] == null ? null : map['weekOfYear'] as int,
      weeklyRetention: map['weeklyRetention'] == null ? null : map['weeklyRetention'] as String,
      yearlyRetention: map['yearlyRetention'] == null ? null : map['yearlyRetention'] as String,
    );
  }
}

