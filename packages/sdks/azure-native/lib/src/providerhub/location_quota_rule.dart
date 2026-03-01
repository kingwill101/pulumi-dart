// ignore_for_file: unused_element, unnecessary_cast


class LocationQuotaRule {
  /// The location.
  final String? location;
  /// The policy.
  final String? policy;
  /// The quota id.
  final String? quotaId;

  /// Creates a new [LocationQuotaRule].
  /// [location] The location.
  /// [policy] The policy.
  /// [quotaId] The quota id.
  LocationQuotaRule({
    this.location,
    this.policy,
    this.quotaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'policy': ?policy,
      'quotaId': ?quotaId,
    };
  }

  factory LocationQuotaRule.fromMap(Map<String, dynamic> map) {
    return LocationQuotaRule(
      location: map['location'] == null ? null : map['location'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      quotaId: map['quotaId'] == null ? null : map['quotaId'] as String,
    );
  }
}

