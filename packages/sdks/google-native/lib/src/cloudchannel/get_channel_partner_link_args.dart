// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_channel_partner_link_args_doc}
/// Arguments for getChannelPartnerLink.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_channel_partner_link_args_doc}
class GetChannelPartnerLinkArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetChannelPartnerLinkArgs].
  /// [accountId] Required.
  /// [channelPartnerLinkId] Required.
  /// [view] Optional.
  const GetChannelPartnerLinkArgs({
    required this.accountId,
    required this.channelPartnerLinkId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'channelPartnerLinkId': channelPartnerLinkId,
      'view': ?view,
    };
  }

  factory GetChannelPartnerLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelPartnerLinkArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      channelPartnerLinkId: pulumi.Input.fromValue(map['channelPartnerLinkId'] as String),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
