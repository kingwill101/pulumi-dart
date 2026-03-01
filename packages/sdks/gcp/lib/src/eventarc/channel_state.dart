// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Channel resources.
class ChannelState {
  /// The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  final pulumi.Input<String>? activationToken;
  /// The creation time.
  final pulumi.Input<String>? createTime;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// User-defined labels for the channel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The resource name of the channel. Must be unique within the location on the project.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  final pulumi.Input<String>? pubsubTopic;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The state of a Channel.
  final pulumi.Input<String>? state;
  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  final pulumi.Input<String>? thirdPartyProvider;
  /// Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String>? uid;
  /// The last-modified time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ChannelState].
  /// [activationToken] The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  /// [createTime] The creation time.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] User-defined labels for the channel.
  /// [location] The location for the resource
  /// [name] The resource name of the channel. Must be unique within the location on the project.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The state of a Channel.
  /// [thirdPartyProvider] The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  /// [uid] Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  ChannelState({
    pulumi.Output<String>? activationToken,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? cryptoKeyName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? pubsubTopic,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? thirdPartyProvider,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      activationToken = pulumi.Input.asOptionalInput<String>(activationToken),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pubsubTopic = pulumi.Input.asOptionalInput<String>(pubsubTopic),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      thirdPartyProvider = pulumi.Input.asOptionalInput<String>(thirdPartyProvider),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationToken': ?activationToken,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pubsubTopic': ?pubsubTopic,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'thirdPartyProvider': ?thirdPartyProvider,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ChannelState.fromMap(Map<String, dynamic> map) {
    return ChannelState(
      activationToken: map['activationToken'] == null ? null : pulumi.Output.create<String>(map['activationToken'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pubsubTopic: map['pubsubTopic'] == null ? null : pulumi.Output.create<String>(map['pubsubTopic'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      thirdPartyProvider: map['thirdPartyProvider'] == null ? null : pulumi.Output.create<String>(map['thirdPartyProvider'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

