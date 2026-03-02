// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Synthesizes speech and plays back the synthesized audio to the caller in Telephony Gateway. Telephony Gateway takes the synthesizer settings from `DetectIntentResponse.output_audio_config` which can either be set at request-level or can come from the agent-level synthesizer config.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech {
  /// The SSML to be synthesized. For more information, see [SSML](https://developers.google.com/actions/reference/ssml).
  final pulumi.Input<String>? ssml;
  /// The raw text to be synthesized.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech].
  /// [ssml] The SSML to be synthesized. For more information, see [SSML](https://developers.google.com/actions/reference/ssml).
  /// [text] The raw text to be synthesized.
  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech({
    this.ssml,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssml': ?ssml,
      'text': ?text,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
      ssml: map['ssml'] == null ? null : (map['ssml'] as String).input(),
      text: map['text'] == null ? null : (map['text'] as String).input(),
    );
  }
}

