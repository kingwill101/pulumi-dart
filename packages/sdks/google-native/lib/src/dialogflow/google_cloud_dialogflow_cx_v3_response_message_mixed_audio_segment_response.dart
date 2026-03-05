// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents one segment of audio.
class GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegmentResponse {
  /// Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  final pulumi.Input<bool> allowPlaybackInterruption;
  /// Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  final pulumi.Input<String> audio;
  /// Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegmentResponse].
  /// [allowPlaybackInterruption] Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  /// [audio] Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// [uri] Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegmentResponse({
    required this.allowPlaybackInterruption,
    required this.audio,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': allowPlaybackInterruption,
      'audio': audio,
      'uri': uri,
    };
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegmentResponse(
      allowPlaybackInterruption: pulumi.Input.fromValue(map['allowPlaybackInterruption'] as bool),
      audio: pulumi.Input.fromValue(map['audio'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

