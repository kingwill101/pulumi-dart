// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment {
  /// (Output)
  /// Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  final pulumi.Input<bool?>? allowPlaybackInterruption;
  /// Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// A base64-encoded string.
  /// This field is part of a union field `content`: Only one of `audio` or `uri` may be set.
  final pulumi.Input<String?>? audio;
  /// Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  /// This field is part of a union field `content`: Only one of `audio` or `uri` may be set.
  final pulumi.Input<String?>? uri;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment].
  /// [allowPlaybackInterruption] (Output)
  /// [audio] Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// [uri] Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  const CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment({
    this.allowPlaybackInterruption,
    this.audio,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'audio': ?audio,
      'uri': ?uri,
    };
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment.fromMap(Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment(
      allowPlaybackInterruption: (() { final guardedValue = map['allowPlaybackInterruption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
