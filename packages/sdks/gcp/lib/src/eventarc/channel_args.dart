// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_channel_channel_args_doc}
/// The set of arguments for Channel.
/// {@endtemplate}
/// {@macro pulumi_eventarc_channel_channel_args_doc}
class ChannelArgs {
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// User-defined labels for the channel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The resource name of the channel. Must be unique within the location on the project.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  final pulumi.Input<String>? thirdPartyProvider;

  /// Creates a new [ChannelArgs].
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [labels] User-defined labels for the channel.
  /// [location] The location for the resource
  /// [name] The resource name of the channel. Must be unique within the location on the project.
  /// [project] The ID of the project in which the resource belongs.
  /// [thirdPartyProvider] The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  ChannelArgs({
    pulumi.Output<String>? cryptoKeyName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? thirdPartyProvider,
  }) :
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      thirdPartyProvider = pulumi.Input.asOptionalInput<String>(thirdPartyProvider);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': ?cryptoKeyName,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'thirdPartyProvider': ?thirdPartyProvider,
    };
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      thirdPartyProvider: map['thirdPartyProvider'] == null ? null : pulumi.Output.create<String>(map['thirdPartyProvider'] as String),
    );
  }
}

