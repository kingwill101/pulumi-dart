// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_channel_connection_args_doc}
/// The set of arguments for ChannelConnection.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_channel_connection_args_doc}
class ChannelConnectionArgs {
  /// Input only. Activation token for the channel. The token will be used during the creation of ChannelConnection to bind the channel with the provider project. This field will not be stored in the provider resource.
  final pulumi.Input<String>? activationToken;

  /// The name of the connected subscriber Channel. This is a weak reference to avoid cross project and cross accounts references. This must be in `projects/{project}/location/{location}/channels/{channel_id}` format.
  final pulumi.Input<String> channel;

  /// Required. The user-provided ID to be assigned to the channel connection.
  final pulumi.Input<String> channelConnectionId;
  final pulumi.Input<String>? location;

  /// The name of the connection.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ChannelConnectionArgs].
  /// [activationToken] Input only. Activation token for the channel. The token will be used during the creation of ChannelConnection to bind the channel with the provider project. This field will not be stored in the provider resource.
  /// [channel] The name of the connected subscriber Channel. This is a weak reference to avoid cross project and cross accounts references. This must be in `projects/{project}/location/{location}/channels/{channel_id}` format.
  /// [channelConnectionId] Required. The user-provided ID to be assigned to the channel connection.
  /// [location] Optional.
  /// [name] The name of the connection.
  /// [project] Optional.
  ChannelConnectionArgs({
    this.activationToken,
    required this.channel,
    required this.channelConnectionId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationToken': ?activationToken,
      'channel': channel,
      'channelConnectionId': channelConnectionId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ChannelConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ChannelConnectionArgs(
      activationToken: (() {
        final guardedValue = map['activationToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channel: pulumi.Input.fromValue(map['channel'] as String),
      channelConnectionId: pulumi.Input.fromValue(
        map['channelConnectionId'] as String,
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
