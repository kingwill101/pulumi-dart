// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_partner_link_link_state.dart';

/// {@template pulumi_cloudchannel_v1_channel_partner_link_args_doc}
/// The set of arguments for ChannelPartnerLink.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_channel_partner_link_args_doc}
class ChannelPartnerLinkArgs {
  final pulumi.Input<String> accountId;
  /// State of the channel partner link.
  final pulumi.Input<ChannelPartnerLinkLinkState> linkState;
  /// Cloud Identity ID of the linked reseller.
  final pulumi.Input<String> resellerCloudIdentityId;

  /// Creates a new [ChannelPartnerLinkArgs].
  /// [accountId] Required.
  /// [linkState] State of the channel partner link.
  /// [resellerCloudIdentityId] Cloud Identity ID of the linked reseller.
  const ChannelPartnerLinkArgs({
    required this.accountId,
    required this.linkState,
    required this.resellerCloudIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'linkState': pulumi.Input.mapInputValue<ChannelPartnerLinkLinkState, String>(linkState, (value) => value.wireValue),
      'resellerCloudIdentityId': resellerCloudIdentityId,
    };
  }

  factory ChannelPartnerLinkArgs.fromMap(Map<String, dynamic> map) {
    return ChannelPartnerLinkArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      linkState: pulumi.Input.fromValue(ChannelPartnerLinkLinkState.fromValue(map['linkState']! as String)),
      resellerCloudIdentityId: pulumi.Input.fromValue(map['resellerCloudIdentityId'] as String),
    );
  }
}

