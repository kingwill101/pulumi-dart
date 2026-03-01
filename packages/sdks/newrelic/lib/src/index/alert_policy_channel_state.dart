// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertPolicyChannel resources.
class AlertPolicyChannelState {
  /// Determines the New Relic account where the alert policy channel will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// Array of channel IDs to apply to the specified policy. We recommended sorting channel IDs in ascending order to avoid drift your Terraform state.
  final pulumi.Input<List<String>>? channelIds;
  /// The ID of the policy.
  final pulumi.Input<String>? policyId;

  /// Creates a new [AlertPolicyChannelState].
  /// [accountId] Determines the New Relic account where the alert policy channel will be created. Defaults to the account associated with the API key used.
  /// [channelIds] Array of channel IDs to apply to the specified policy. We recommended sorting channel IDs in ascending order to avoid drift your Terraform state.
  /// [policyId] The ID of the policy.
  AlertPolicyChannelState({
    pulumi.Output<String>? accountId,
    pulumi.Output<List<String>>? channelIds,
    pulumi.Output<String>? policyId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      channelIds = pulumi.Input.asOptionalInput<List<String>>(channelIds),
      policyId = pulumi.Input.asOptionalInput<String>(policyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'channelIds': ?channelIds,
      'policyId': ?policyId,
    };
  }

  factory AlertPolicyChannelState.fromMap(Map<String, dynamic> map) {
    return AlertPolicyChannelState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      channelIds: map['channelIds'] == null ? null : pulumi.Output.create<List<String>>((map['channelIds'] as List).cast<String>()),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
    );
  }
}

