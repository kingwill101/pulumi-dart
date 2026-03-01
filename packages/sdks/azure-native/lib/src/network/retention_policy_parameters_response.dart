// ignore_for_file: unused_element, unnecessary_cast


/// Parameters that define the retention policy for flow log.
class RetentionPolicyParametersResponse {
  /// Number of days to retain flow log records.
  final int? days;
  /// Flag to enable/disable retention.
  final bool? enabled;

  /// Creates a new [RetentionPolicyParametersResponse].
  /// [days] Number of days to retain flow log records.
  /// [enabled] Flag to enable/disable retention.
  RetentionPolicyParametersResponse({
    this.days,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': ?enabled,
    };
  }

  factory RetentionPolicyParametersResponse.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyParametersResponse(
      days: map['days'] == null ? null : map['days'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

