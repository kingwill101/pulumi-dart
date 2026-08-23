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
  const GetChannelConnectionArgs({
    required this.channelConnectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelConnectionId': channelConnectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetChannelConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelConnectionArgs(
      channelConnectionId: pulumi.Input.fromValue(map['channelConnectionId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
