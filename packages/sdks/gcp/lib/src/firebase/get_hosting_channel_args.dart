// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_hosting_channel_get_hosting_channel_args_doc}
/// Arguments for getHostingChannel.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_hosting_channel_get_hosting_channel_args_doc}
class GetHostingChannelArgs {
  /// The ID of the channel. Use `channel_id = "live"` for the default channel of a site.
  final pulumi.Input<String> channelId;

  /// The ID of the site this channel belongs to.
  final pulumi.Input<String> siteId;

  /// Creates a new [GetHostingChannelArgs].
  /// [channelId] The ID of the channel. Use `channel_id = "live"` for the default channel of a site.
  /// [siteId] The ID of the site this channel belongs to.
  GetHostingChannelArgs({required this.channelId, required this.siteId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'channelId': channelId, 'siteId': siteId};
  }

  factory GetHostingChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetHostingChannelArgs(
      channelId: pulumi.Input.fromValue(map['channelId'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
