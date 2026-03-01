// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertPolicy resources.
class AlertPolicyState {
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

  /// Creates a new [AlertPolicyState].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [channelIds] **DEPRECATED** The `channel_ids` argument is deprecated and will be removed in the next major release of the provider. An array of channel IDs (integers) to assign to the policy. Adding or removing channel IDs from this array will result in a new alert policy resource being created and the old one being destroyed. Also note that channel IDs _cannot_ be imported via `pulumi import` (see Import for info).
  /// [incidentPreference] The rollup strategy for the policy, which can have one of the following values (the default value is `PER_POLICY`):
  /// [name] The name of the policy.
  AlertPolicyState({
    pulumi.Output<String>? accountId,
    pulumi.Output<List<String>>? channelIds,
    pulumi.Output<String>? incidentPreference,
    pulumi.Output<String>? name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      channelIds = pulumi.Input.asOptionalInput<List<String>>(channelIds),
      incidentPreference = pulumi.Input.asOptionalInput<String>(incidentPreference),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'channelIds': ?channelIds,
      'incidentPreference': ?incidentPreference,
      'name': ?name,
    };
  }

  factory AlertPolicyState.fromMap(Map<String, dynamic> map) {
    return AlertPolicyState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      channelIds: map['channelIds'] == null ? null : pulumi.Output.create<List<String>>((map['channelIds'] as List).cast<String>()),
      incidentPreference: map['incidentPreference'] == null ? null : pulumi.Output.create<String>(map['incidentPreference'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

