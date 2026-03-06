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
  const ChannelDirectLineState({
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
      botName: (() { final guardedValue = map['botName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelDirectLineSite>(guardedValue, (value) => ChannelDirectLineSite.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

