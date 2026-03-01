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
    pulumi.Output<String>? activationToken,
    required pulumi.Output<String> channel,
    required pulumi.Output<String> channelConnectionId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      activationToken = pulumi.Input.asOptionalInput<String>(activationToken),
      channel = pulumi.Input.asInput<String>(channel),
      channelConnectionId = pulumi.Input.asInput<String>(channelConnectionId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      activationToken: map['activationToken'] == null ? null : pulumi.Output.create<String>(map['activationToken'] as String),
      channel: pulumi.Output.create<String>(map['channel'] as String),
      channelConnectionId: pulumi.Output.create<String>(map['channelConnectionId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

