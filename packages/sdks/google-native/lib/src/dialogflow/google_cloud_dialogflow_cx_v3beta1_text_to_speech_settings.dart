// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings related to speech synthesizing.
class GoogleCloudDialogflowCxV3beta1TextToSpeechSettings {
  /// Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/cx/docs/reference/language) to SynthesizeSpeechConfig. These settings affect: - The [phone gateway](https://cloud.google.com/dialogflow/cx/docs/concept/integration/phone-gateway) synthesize configuration set via Agent.text_to_speech_settings. - How speech is synthesized when invoking session APIs. Agent.text_to_speech_settings only applies if OutputAudioConfig.synthesize_speech_config is not specified.
  final pulumi.Input<Map<String, String>>? synthesizeSpeechConfigs;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TextToSpeechSettings].
  /// [synthesizeSpeechConfigs] Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/cx/docs/reference/language) to SynthesizeSpeechConfig. These settings affect: - The [phone gateway](https://cloud.google.com/dialogflow/cx/docs/concept/integration/phone-gateway) synthesize configuration set via Agent.text_to_speech_settings. - How speech is synthesized when invoking session APIs. Agent.text_to_speech_settings only applies if OutputAudioConfig.synthesize_speech_config is not specified.
  GoogleCloudDialogflowCxV3beta1TextToSpeechSettings({
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1TextToSpeechSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TextToSpeechSettings(
      synthesizeSpeechConfigs: map['synthesizeSpeechConfigs'] == null ? null : ((map['synthesizeSpeechConfigs'] as Map).cast<String, String>()).input(),
    );
  }
}

