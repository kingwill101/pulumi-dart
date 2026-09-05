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
  final pulumi.Input<String?>? location;
  /// The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  final pulumi.Input<List<ChannelWebChatSite>?>? sites;

  /// Creates a new [ChannelWebChatArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created.
  /// [sites] A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  const ChannelWebChatArgs({
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
      botName: pulumi.Input.fromValue(map['botName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelWebChatSite>(guardedValue, (value) => ChannelWebChatSite.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
