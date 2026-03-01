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
    pulumi.Output<String>? botName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<ChannelWebChatSite>>? sites,
  }) :
      botName = pulumi.Input.asOptionalInput<String>(botName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sites = pulumi.Input.asOptionalInput<List<ChannelWebChatSite>>(sites);

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
      botName: map['botName'] == null ? null : pulumi.Output.create<String>(map['botName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sites: map['sites'] == null ? null : pulumi.Output.create<List<ChannelWebChatSite>>(pulumi.Input.decodeList<ChannelWebChatSite>(map['sites'], (value) => ChannelWebChatSite.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

