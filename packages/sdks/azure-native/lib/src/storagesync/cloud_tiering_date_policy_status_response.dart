// ignore_for_file: unused_element, unnecessary_cast


/// Status of the date policy
class CloudTieringDatePolicyStatusResponse {
  /// Last updated timestamp
  final String lastUpdatedTimestamp;
  /// Most recent access time of tiered files
  final String tieredFilesMostRecentAccessTimestamp;

  /// Creates a new [CloudTieringDatePolicyStatusResponse].
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [tieredFilesMostRecentAccessTimestamp] Most recent access time of tiered files
  CloudTieringDatePolicyStatusResponse({
    required this.lastUpdatedTimestamp,
    required this.tieredFilesMostRecentAccessTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'tieredFilesMostRecentAccessTimestamp': tieredFilesMostRecentAccessTimestamp,
    };
  }

  factory CloudTieringDatePolicyStatusResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringDatePolicyStatusResponse(
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      tieredFilesMostRecentAccessTimestamp: map['tieredFilesMostRecentAccessTimestamp'] as String,
    );
  }
}

