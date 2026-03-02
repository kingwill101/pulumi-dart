// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_alert_policy_alert_policy_args_doc}
/// The set of arguments for AlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_alert_policy_alert_policy_args_doc}
class AlertPolicyArgs {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// **DEPRECATED** The `channel_ids` argument is deprecated and will be removed in the next major release of the provider. An array of channel IDs (integers) to assign to the policy. Adding or removing channel IDs from this array will result in a new alert policy resource being created and the old one being destroyed. Also note that channel IDs _cannot_ be imported via `pulumi import` (see Import for info).
  final pulumi.Input<List<String>>? channelIds;
  /// The rollup strategy for the policy, which can have one of the following values (the default value is `PER_POLICY`):
  /// * `PER_POLICY` - This sets the incident grouping preference of the policy to **One issue per policy**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-policy) for more details on this incident grouping preference.
  /// * `PER_CONDITION` - This sets the incident grouping preference of the policy to **One issue per condition**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-condition) for more details on this incident grouping preference.
  /// * `PER_CONDITION_AND_TARGET` - This sets the incident grouping preference of the policy to **One issue per condition and signal**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-signal) for more details on this incident grouping preference.
  final pulumi.Input<String>? incidentPreference;
  /// The name of the policy.
  final pulumi.Input<String>? name;

  /// Creates a new [AlertPolicyArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [channelIds] **DEPRECATED** The `channel_ids` argument is deprecated and will be removed in the next major release of the provider. An array of channel IDs (integers) to assign to the policy. Adding or removing channel IDs from this array will result in a new alert policy resource being created and the old one being destroyed. Also note that channel IDs _cannot_ be imported via `pulumi import` (see Import for info).
  /// [incidentPreference] The rollup strategy for the policy, which can have one of the following values (the default value is `PER_POLICY`):
  /// [name] The name of the policy.
  AlertPolicyArgs({
    this.accountId,
    this.channelIds,
    this.incidentPreference,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'channelIds': ?channelIds,
      'incidentPreference': ?incidentPreference,
      'name': ?name,
    };
  }

  factory AlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AlertPolicyArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      channelIds: map['channelIds'] == null ? null : ((map['channelIds'] as List).cast<String>()).input(),
      incidentPreference: map['incidentPreference'] == null ? null : (map['incidentPreference'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

