// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAlertPolicy.
class GetAlertPolicyResult {
  final String accountId;

  /// The time the policy was created.
  final String createdAt;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The rollup strategy for the policy, which can have one of the following values:
  /// * `PER_POLICY` - Represents the incident grouping preference **One issue per policy**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-policy) for more details on this incident grouping preference.
  /// * `PER_CONDITION` - Represents the incident grouping preference **One issue per condition**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-condition) for more details on this incident grouping preference.
  /// * `PER_CONDITION_AND_TARGET` - Represents the incident grouping preference **One issue per condition and signal**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-signal) for more details on this incident grouping preference.
  final String? incidentPreference;
  final String name;

  /// The time the policy was last updated.
  final String updatedAt;

  /// Creates a new [GetAlertPolicyResult].
  /// [accountId] Required.
  /// [createdAt] The time the policy was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [incidentPreference] The rollup strategy for the policy, which can have one of the following values:
  /// [name] Required.
  /// [updatedAt] The time the policy was last updated.
  GetAlertPolicyResult({
    required this.accountId,
    required this.createdAt,
    required this.id,
    this.incidentPreference,
    required this.name,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'createdAt': createdAt,
      'id': id,
      'incidentPreference': ?incidentPreference,
      'name': name,
      'updatedAt': updatedAt,
    };
  }

  factory GetAlertPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAlertPolicyResult(
      accountId: map['accountId'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      incidentPreference: (() {
        final guardedValue = map['incidentPreference'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
