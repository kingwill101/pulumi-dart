// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_get_channel_connection_args_doc}
/// Arguments for getChannelConnection.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_get_channel_connection_args_doc}
class GetChannelConnectionArgs {
  final pulumi.Input<String> channelConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChannelConnectionArgs].
  /// [channelConnectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetChannelConnectionArgs({
    required pulumi.Output<String> channelConnectionId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      channelConnectionId = pulumi.Input.asInput<String>(channelConnectionId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelConnectionId': channelConnectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetChannelConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelConnectionArgs(
      channelConnectionId: pulumi.Output.create<String>(map['channelConnectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

