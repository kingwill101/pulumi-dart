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
      channelConnectionId: (map['channelConnectionId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

