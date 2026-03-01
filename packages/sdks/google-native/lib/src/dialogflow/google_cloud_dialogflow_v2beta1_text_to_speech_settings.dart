// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_text_to_speech_settings_output_audio_encoding.dart';

/// Instructs the speech synthesizer on how to generate the output audio content.
class GoogleCloudDialogflowV2beta1TextToSpeechSettings {
  /// Optional. Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  final bool? enableTextToSpeech;
  /// Audio encoding of the synthesized audio content.
  final GoogleCloudDialogflowV2beta1TextToSpeechSettingsOutputAudioEncoding outputAudioEncoding;
  /// Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).
  final int? sampleRateHertz;
  /// Optional. Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/docs/reference/language) to SynthesizeSpeechConfig.
  final Map<String, String>? synthesizeSpeechConfigs;

  /// Creates a new [GoogleCloudDialogflowV2beta1TextToSpeechSettings].
  /// [enableTextToSpeech] Optional. Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  /// [outputAudioEncoding] Audio encoding of the synthesized audio content.
  /// [sampleRateHertz] Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).
  /// [synthesizeSpeechConfigs] Optional. Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/docs/reference/language) to SynthesizeSpeechConfig.
  GoogleCloudDialogflowV2beta1TextToSpeechSettings({
    this.enableTextToSpeech,
    required this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTextToSpeech': ?enableTextToSpeech,
      'outputAudioEncoding': outputAudioEncoding.value,
      'sampleRateHertz': ?sampleRateHertz,
      'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs,
    };
  }

  factory GoogleCloudDialogflowV2beta1TextToSpeechSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1TextToSpeechSettings(
      enableTextToSpeech: map['enableTextToSpeech'] == null ? null : map['enableTextToSpeech'] as bool,
      outputAudioEncoding: GoogleCloudDialogflowV2beta1TextToSpeechSettingsOutputAudioEncoding.fromValue(map['outputAudioEncoding'] as String),
      sampleRateHertz: map['sampleRateHertz'] == null ? null : map['sampleRateHertz'] as int,
      synthesizeSpeechConfigs: map['synthesizeSpeechConfigs'] == null ? null : (map['synthesizeSpeechConfigs'] as Map).cast<String, String>(),
    );
  }
}

