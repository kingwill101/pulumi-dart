// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxAgentTextToSpeechSettings {
  /// Configuration of how speech should be synthesized, mapping from [language](https://cloud.google.com/dialogflow/cx/docs/reference/language) to [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).
  /// These settings affect:
  /// * The phone gateway synthesize configuration set via Agent.text_to_speech_settings.
  /// * How speech is synthesized when invoking session APIs. `Agent.text_to_speech_settings` only applies if `OutputAudioConfig.synthesize_speech_config` is not specified.
  final pulumi.Input<String>? synthesizeSpeechConfigs;

  /// Creates a new [CxAgentTextToSpeechSettings].
  /// [synthesizeSpeechConfigs] Configuration of how speech should be synthesized, mapping from [language](https://cloud.google.com/dialogflow/cx/docs/reference/language) to [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).
  CxAgentTextToSpeechSettings({
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs,
    };
  }

  factory CxAgentTextToSpeechSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentTextToSpeechSettings(
      synthesizeSpeechConfigs: map['synthesizeSpeechConfigs'] == null ? null : (map['synthesizeSpeechConfigs']! as String).input(),
    );
  }
}

