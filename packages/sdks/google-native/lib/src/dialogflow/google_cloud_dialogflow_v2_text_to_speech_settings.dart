// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_text_to_speech_settings_output_audio_encoding.dart';

/// Instructs the speech synthesizer on how to generate the output audio content.
class GoogleCloudDialogflowV2TextToSpeechSettings {
  /// Optional. Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  final pulumi.Input<bool>? enableTextToSpeech;

  /// Audio encoding of the synthesized audio content.
  final pulumi.Input<
    GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding
  >
  outputAudioEncoding;

  /// Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).
  final pulumi.Input<int>? sampleRateHertz;

  /// Optional. Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/docs/reference/language) to SynthesizeSpeechConfig.
  final pulumi.Input<Map<String, String>>? synthesizeSpeechConfigs;

  /// Creates a new [GoogleCloudDialogflowV2TextToSpeechSettings].
  /// [enableTextToSpeech] Optional. Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  /// [outputAudioEncoding] Audio encoding of the synthesized audio content.
  /// [sampleRateHertz] Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).
  /// [synthesizeSpeechConfigs] Optional. Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/docs/reference/language) to SynthesizeSpeechConfig.
  GoogleCloudDialogflowV2TextToSpeechSettings({
    this.enableTextToSpeech,
    required this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTextToSpeech': ?enableTextToSpeech,
      'outputAudioEncoding':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding,
            String
          >(outputAudioEncoding, (value) => value.wireValue),
      'sampleRateHertz': ?sampleRateHertz,
      'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs,
    };
  }

  factory GoogleCloudDialogflowV2TextToSpeechSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2TextToSpeechSettings(
      enableTextToSpeech: (() {
        final guardedValue = map['enableTextToSpeech'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      outputAudioEncoding: pulumi.Input.fromValue(
        GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding.fromValue(
          map['outputAudioEncoding']! as String,
        ),
      ),
      sampleRateHertz: (() {
        final guardedValue = map['sampleRateHertz'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      synthesizeSpeechConfigs: (() {
        final guardedValue = map['synthesizeSpeechConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
