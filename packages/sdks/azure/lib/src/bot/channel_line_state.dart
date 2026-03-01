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
    pulumi.Output<String>? botName,
    pulumi.Output<List<ChannelLineLineChannel>>? lineChannels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? resourceGroupName,
  }) :
      botName = pulumi.Input.asOptionalInput<String>(botName),
      lineChannels = pulumi.Input.asOptionalInput<List<ChannelLineLineChannel>>(lineChannels),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      botName: map['botName'] == null ? null : pulumi.Output.create<String>(map['botName'] as String),
      lineChannels: map['lineChannels'] == null ? null : pulumi.Output.create<List<ChannelLineLineChannel>>(pulumi.Input.decodeList<ChannelLineLineChannel>(map['lineChannels'], (value) => ChannelLineLineChannel.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

