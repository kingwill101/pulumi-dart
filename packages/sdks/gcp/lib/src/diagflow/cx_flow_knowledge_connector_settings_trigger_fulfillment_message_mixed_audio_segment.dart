// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment {
  /// (Output)
  /// Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  final pulumi.Input<bool>? allowPlaybackInterruption;
  /// Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// A base64-encoded string.
  /// This field is part of a union field `content`: Only one of `audio` or `uri` may be set.
  final pulumi.Input<String>? audio;
  /// Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  /// This field is part of a union field `content`: Only one of `audio` or `uri` may be set.
  final pulumi.Input<String>? uri;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment].
  /// [allowPlaybackInterruption] (Output)
  /// [audio] Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// [uri] Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment({
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

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null ? null : (map['allowPlaybackInterruption']! as bool).input(),
      audio: map['audio'] == null ? null : (map['audio']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

