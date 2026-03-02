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
    this.activationToken,
    this.createTime,
    this.cryptoKeyName,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pubsubTopic,
    this.pulumiLabels,
    this.state,
    this.thirdPartyProvider,
    this.uid,
    this.updateTime,
  });

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
      activationToken: map['activationToken'] == null ? null : (map['activationToken']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : (map['cryptoKeyName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pubsubTopic: map['pubsubTopic'] == null ? null : (map['pubsubTopic']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      thirdPartyProvider: map['thirdPartyProvider'] == null ? null : (map['thirdPartyProvider']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

