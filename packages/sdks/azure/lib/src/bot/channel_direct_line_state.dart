// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_direct_line_site.dart';

/// Input properties used for looking up and filtering ChannelDirectLine resources.
class ChannelDirectLineState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  final pulumi.Input<List<ChannelDirectLineSite>>? sites;

  /// Creates a new [ChannelDirectLineState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  /// [sites] A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  ChannelDirectLineState({
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
      'sites': ?pulumi.Input.mapOptionalInputValue<List<ChannelDirectLineSite>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<ChannelDirectLineSite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelDirectLineState.fromMap(Map<String, dynamic> map) {
    return ChannelDirectLineState(
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sites: map['sites'] == null ? null : (pulumi.Input.decodeList<ChannelDirectLineSite>(map['sites'], (value) => ChannelDirectLineSite.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

