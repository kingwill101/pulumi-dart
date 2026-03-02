// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_web_chat_site.dart';

/// Input properties used for looking up and filtering ChannelWebChat resources.
class ChannelWebChatState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  final pulumi.Input<List<ChannelWebChatSite>>? sites;

  /// Creates a new [ChannelWebChatState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created.
  /// [sites] A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  ChannelWebChatState({
    this.botName,
    this.location,
    this.resourceGroupName,
    this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'location': ?location,
      'resourceGroupName': ?resourceGroupName,
      'sites': ?pulumi.Input.mapOptionalInputValue<List<ChannelWebChatSite>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<ChannelWebChatSite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelWebChatState.fromMap(Map<String, dynamic> map) {
    return ChannelWebChatState(
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sites: map['sites'] == null ? null : (pulumi.Input.decodeList<ChannelWebChatSite>(map['sites'], (value) => ChannelWebChatSite.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

