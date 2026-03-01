// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_line_line_channel.dart';

/// {@template pulumi_bot_channel_line_channel_line_args_doc}
/// The set of arguments for ChannelLine.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_line_channel_line_args_doc}
class ChannelLineArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// One or more `line_channel` blocks as defined below.
  final pulumi.Input<List<ChannelLineLineChannel>> lineChannels;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Line Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ChannelLineArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [lineChannels] One or more `line_channel` blocks as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Line Channel should be created. Changing this forces a new resource to be created.
  ChannelLineArgs({
    required pulumi.Output<String> botName,
    required pulumi.Output<List<ChannelLineLineChannel>> lineChannels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
  }) :
      botName = pulumi.Input.asInput<String>(botName),
      lineChannels = pulumi.Input.asInput<List<ChannelLineLineChannel>>(lineChannels),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'lineChannels': pulumi.Input.mapInputValue<List<ChannelLineLineChannel>, List<Map<String, dynamic>>>(lineChannels, (value) => pulumi.Input.encodeList<ChannelLineLineChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ChannelLineArgs.fromMap(Map<String, dynamic> map) {
    return ChannelLineArgs(
      botName: pulumi.Output.create<String>(map['botName'] as String),
      lineChannels: pulumi.Output.create<List<ChannelLineLineChannel>>(pulumi.Input.decodeList<ChannelLineLineChannel>(map['lineChannels'], (value) => ChannelLineLineChannel.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

