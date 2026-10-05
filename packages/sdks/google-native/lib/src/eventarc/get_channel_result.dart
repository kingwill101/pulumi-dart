// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getChannel.
class GetChannelResult {
  /// The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  final String? activationToken;
  /// The creation time.
  final String? createTime;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String? cryptoKeyName;
  /// The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  final String? name;
  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  final String? provider;
  /// The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  final String? pubsubTopic;
  /// The state of a Channel.
  final String? state;
  /// Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final String? uid;
  /// The last-modified time.
  final String? updateTime;

  /// Creates a new [GetChannelResult].
  /// [activationToken] The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  /// [createTime] The creation time.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [name] The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  /// [provider] The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  /// [pubsubTopic] The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  /// [state] The state of a Channel.
  /// [uid] Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  const GetChannelResult({
    this.activationToken,
    this.createTime,
    this.cryptoKeyName,
    this.name,
    this.provider,
    this.pubsubTopic,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationToken': ?activationToken,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'name': ?name,
      'provider': ?provider,
      'pubsubTopic': ?pubsubTopic,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      activationToken: (() { final guardedValue = map['activationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cryptoKeyName: (() { final guardedValue = map['cryptoKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
