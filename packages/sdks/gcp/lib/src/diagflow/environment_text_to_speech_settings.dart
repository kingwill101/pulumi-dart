// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_text_to_speech_settings_synthesize_speech_config.dart';

class EnvironmentTextToSpeechSettings {
  /// Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  final pulumi.Input<bool>? enableTextToSpeech;
  /// Audio encoding of the synthesized audio content.
  /// Possible values are: `OUTPUT_AUDIO_ENCODING_UNSPECIFIED`, `OUTPUT_AUDIO_ENCODING_LINEAR_16`, `OUTPUT_AUDIO_ENCODING_MP3`, `OUTPUT_AUDIO_ENCODING_MP3_64_KBPS`, `OUTPUT_AUDIO_ENCODING_OGG_OPUS`, `OUTPUT_AUDIO_ENCODING_MULAW`, `OUTPUT_AUDIO_ENCODING_ALAW`.
  final pulumi.Input<String>? outputAudioEncoding;
  /// The synthesis sample rate (in hertz) for this audio.
  final pulumi.Input<int>? sampleRateHertz;
  /// Configuration of how speech should be synthesized, mapping from language to SynthesizeSpeechConfig.
  /// Structure is documented below.
  final pulumi.Input<List<EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig>>? synthesizeSpeechConfigs;

  /// Creates a new [EnvironmentTextToSpeechSettings].
  /// [enableTextToSpeech] Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  /// [outputAudioEncoding] Audio encoding of the synthesized audio content.
  /// [sampleRateHertz] The synthesis sample rate (in hertz) for this audio.
  /// [synthesizeSpeechConfigs] Configuration of how speech should be synthesized, mapping from language to SynthesizeSpeechConfig.
  const EnvironmentTextToSpeechSettings({
    this.enableTextToSpeech,
    this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTextToSpeech': ?enableTextToSpeech,
      'outputAudioEncoding': ?outputAudioEncoding,
      'sampleRateHertz': ?sampleRateHertz,
      'synthesizeSpeechConfigs': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig>, List<Map<String, dynamic>>>(synthesizeSpeechConfigs, (value) => pulumi.Input.encodeList<EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentTextToSpeechSettings.fromMap(Map<String, dynamic> map) {
    return EnvironmentTextToSpeechSettings(
      enableTextToSpeech: (() { final guardedValue = map['enableTextToSpeech']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputAudioEncoding: (() { final guardedValue = map['outputAudioEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRateHertz: (() { final guardedValue = map['sampleRateHertz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      synthesizeSpeechConfigs: (() { final guardedValue = map['synthesizeSpeechConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig>(guardedValue, (value) => EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
