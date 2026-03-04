// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_alert_policy_channel_alert_policy_channel_args_doc}
/// The set of arguments for AlertPolicyChannel.
/// {@endtemplate}
/// {@macro pulumi_index_alert_policy_channel_alert_policy_channel_args_doc}
class AlertPolicyChannelArgs {
  /// Determines the New Relic account where the alert policy channel will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;

  /// Array of channel IDs to apply to the specified policy. We recommended sorting channel IDs in ascending order to avoid drift your Terraform state.
  final pulumi.Input<List<String>> channelIds;

  /// The ID of the policy.
  final pulumi.Input<String> policyId;

  /// Creates a new [AlertPolicyChannelArgs].
  /// [accountId] Determines the New Relic account where the alert policy channel will be created. Defaults to the account associated with the API key used.
  /// [channelIds] Array of channel IDs to apply to the specified policy. We recommended sorting channel IDs in ascending order to avoid drift your Terraform state.
  /// [policyId] The ID of the policy.
  AlertPolicyChannelArgs({
    this.accountId,
    required this.channelIds,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'channelIds': channelIds,
      'policyId': policyId,
    };
  }

  factory AlertPolicyChannelArgs.fromMap(Map<String, dynamic> map) {
    return AlertPolicyChannelArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channelIds: pulumi.Input.fromValue(
        (map['channelIds'] as List).cast<String>(),
      ),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
