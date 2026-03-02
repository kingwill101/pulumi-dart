// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_line_line_channel.dart';

/// Input properties used for looking up and filtering ChannelLine resources.
class ChannelLineState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// One or more `line_channel` blocks as defined below.
  final pulumi.Input<List<ChannelLineLineChannel>>? lineChannels;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Line Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ChannelLineState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [lineChannels] One or more `line_channel` blocks as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Line Channel should be created. Changing this forces a new resource to be created.
  ChannelLineState({
    this.botName,
    this.lineChannels,
    this.location,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'lineChannels': ?pulumi.Input.mapOptionalInputValue<List<ChannelLineLineChannel>, List<Map<String, dynamic>>>(lineChannels, (value) => pulumi.Input.encodeList<ChannelLineLineChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ChannelLineState.fromMap(Map<String, dynamic> map) {
    return ChannelLineState(
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      lineChannels: map['lineChannels'] == null ? null : (pulumi.Input.decodeList<ChannelLineLineChannel>(map['lineChannels'], (value) => ChannelLineLineChannel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

