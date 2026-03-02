// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_alert_policy_get_alert_policy_args_doc}
/// Arguments for getAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_alert_policy_get_alert_policy_args_doc}
class GetAlertPolicyArgs {
  /// The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// The rollup strategy for the policy, which can have one of the following values:
  /// * `PER_POLICY` - Represents the incident grouping preference **One issue per policy**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-policy) for more details on this incident grouping preference.
  /// * `PER_CONDITION` - Represents the incident grouping preference **One issue per condition**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-condition) for more details on this incident grouping preference.
  /// * `PER_CONDITION_AND_TARGET` - Represents the incident grouping preference **One issue per condition and signal**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-signal) for more details on this incident grouping preference.
  final pulumi.Input<String>? incidentPreference;
  /// The name of the alert policy in New Relic.
  final pulumi.Input<String> name;

  /// Creates a new [GetAlertPolicyArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [incidentPreference] The rollup strategy for the policy, which can have one of the following values:
  /// [name] The name of the alert policy in New Relic.
  GetAlertPolicyArgs({
    this.accountId,
    this.incidentPreference,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'incidentPreference': ?incidentPreference,
      'name': name,
    };
  }

  factory GetAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertPolicyArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      incidentPreference: map['incidentPreference'] == null ? null : (map['incidentPreference'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

