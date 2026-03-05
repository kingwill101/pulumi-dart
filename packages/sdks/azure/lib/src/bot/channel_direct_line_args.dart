// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_direct_line_site.dart';

/// {@template pulumi_bot_channel_direct_line_channel_direct_line_args_doc}
/// The set of arguments for ChannelDirectLine.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_direct_line_channel_direct_line_args_doc}
class ChannelDirectLineArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  final pulumi.Input<List<ChannelDirectLineSite>> sites;

  /// Creates a new [ChannelDirectLineArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  /// [sites] A site represents a client application that you want to connect to your bot. One or more `site` blocks as defined below.
  ChannelDirectLineArgs({
    required this.botName,
    this.location,
    required this.resourceGroupName,
    required this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sites': pulumi.Input.mapInputValue<List<ChannelDirectLineSite>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<ChannelDirectLineSite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelDirectLineArgs.fromMap(Map<String, dynamic> map) {
    return ChannelDirectLineArgs(
      botName: pulumi.Input.fromValue(map['botName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sites: pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelDirectLineSite>(map['sites']!, (value) => ChannelDirectLineSite.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

