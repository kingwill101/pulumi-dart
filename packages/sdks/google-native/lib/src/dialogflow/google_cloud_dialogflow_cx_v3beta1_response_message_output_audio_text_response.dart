// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse {
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final pulumi.Input<bool> allowPlaybackInterruption;
  /// The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).
  final pulumi.Input<String> ssml;
  /// The raw text to be synthesized.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse].
  /// [allowPlaybackInterruption] Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  /// [ssml] The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).
  /// [text] The raw text to be synthesized.
  const GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse({
    required this.allowPlaybackInterruption,
    required this.ssml,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': allowPlaybackInterruption,
      'ssml': ssml,
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse(
      allowPlaybackInterruption: pulumi.Input.fromValue(map['allowPlaybackInterruption'] as bool),
      ssml: pulumi.Input.fromValue(map['ssml'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

