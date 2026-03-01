// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_channel_args_doc}
/// The set of arguments for Channel.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_channel_args_doc}
class ChannelArgs {
  /// Required. The user-provided ID to be assigned to the channel.
  final pulumi.Input<String> channelId;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  final pulumi.Input<String>? location;
  /// The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  final pulumi.Input<String>? provider;

  /// Creates a new [ChannelArgs].
  /// [channelId] Required. The user-provided ID to be assigned to the channel.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [location] Optional.
  /// [name] The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  /// [project] Optional.
  /// [provider] The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  ChannelArgs({
    required pulumi.Output<String> channelId,
    pulumi.Output<String>? cryptoKeyName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? provider,
  }) :
      channelId = pulumi.Input.asInput<String>(channelId),
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      provider = pulumi.Input.asOptionalInput<String>(provider);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'cryptoKeyName': ?cryptoKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'provider': ?provider,
    };
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      channelId: pulumi.Output.create<String>(map['channelId'] as String),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      provider: map['provider'] == null ? null : pulumi.Output.create<String>(map['provider'] as String),
    );
  }
}

