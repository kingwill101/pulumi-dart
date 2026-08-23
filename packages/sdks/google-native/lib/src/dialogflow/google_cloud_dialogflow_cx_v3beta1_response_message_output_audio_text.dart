// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText {
  /// The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).
  final pulumi.Input<String>? ssml;
  /// The raw text to be synthesized.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText].
  /// [ssml] The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).
  /// [text] The raw text to be synthesized.
  const GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText({
    this.ssml,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssml': ?ssml,
      'text': ?text,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(
      ssml: (() { final guardedValue = map['ssml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
