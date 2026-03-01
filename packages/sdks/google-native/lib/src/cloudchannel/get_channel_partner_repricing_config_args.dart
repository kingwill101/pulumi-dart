// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_channel_partner_repricing_config_args_doc}
/// Arguments for getChannelPartnerRepricingConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_channel_partner_repricing_config_args_doc}
class GetChannelPartnerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String> channelPartnerRepricingConfigId;

  /// Creates a new [GetChannelPartnerRepricingConfigArgs].
  /// [accountId] Required.
  /// [channelPartnerLinkId] Required.
  /// [channelPartnerRepricingConfigId] Required.
  GetChannelPartnerRepricingConfigArgs({
    required pulumi.Output<String> accountId,
    required pulumi.Output<String> channelPartnerLinkId,
    required pulumi.Output<String> channelPartnerRepricingConfigId,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      channelPartnerLinkId = pulumi.Input.asInput<String>(channelPartnerLinkId),
      channelPartnerRepricingConfigId = pulumi.Input.asInput<String>(channelPartnerRepricingConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'channelPartnerLinkId': channelPartnerLinkId,
      'channelPartnerRepricingConfigId': channelPartnerRepricingConfigId,
    };
  }

  factory GetChannelPartnerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelPartnerRepricingConfigArgs(
      accountId: pulumi.Output.create<String>(map['accountId'] as String),
      channelPartnerLinkId: pulumi.Output.create<String>(map['channelPartnerLinkId'] as String),
      channelPartnerRepricingConfigId: pulumi.Output.create<String>(map['channelPartnerRepricingConfigId'] as String),
    );
  }
}

