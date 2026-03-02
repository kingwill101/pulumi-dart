// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_web_chat_site.dart';

/// {@template pulumi_bot_channel_web_chat_channel_web_chat_args_doc}
/// The set of arguments for ChannelWebChat.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_web_chat_channel_web_chat_args_doc}
class ChannelWebChatArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  final pulumi.Input<List<ChannelWebChatSite>>? sites;

  /// Creates a new [ChannelWebChatArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created.
  /// [sites] A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  ChannelWebChatArgs({
    required this.botName,
    this.location,
    required this.resourceGroupName,
    this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sites': ?pulumi.Input.mapOptionalInputValue<List<ChannelWebChatSite>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<ChannelWebChatSite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelWebChatArgs.fromMap(Map<String, dynamic> map) {
    return ChannelWebChatArgs(
      botName: (map['botName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sites: map['sites'] == null ? null : (pulumi.Input.decodeList<ChannelWebChatSite>(map['sites'], (value) => ChannelWebChatSite.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

