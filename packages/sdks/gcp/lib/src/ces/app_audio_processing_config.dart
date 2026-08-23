// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_audio_processing_config_ambient_sound_config.dart';
import 'app_audio_processing_config_barge_in_config.dart';
import 'app_audio_processing_config_synthesize_speech_config.dart';

class AppAudioProcessingConfig {
  /// Configuration for the ambient sound to be played with the synthesized agent
  /// response, to enhance the naturalness of the conversation.
  /// Structure is documented below.
  final pulumi.Input<AppAudioProcessingConfigAmbientSoundConfig>? ambientSoundConfig;
  /// Configuration for how the user barge-in activities should be handled.
  /// Structure is documented below.
  final pulumi.Input<AppAudioProcessingConfigBargeInConfig>? bargeInConfig;
  /// The duration of user inactivity (no speech or interaction) before the agent
  /// prompts the user for reengagement. If not set, the agent will not prompt
  /// the user for reengagement.
  final pulumi.Input<String>? inactivityTimeout;
  /// Configuration of how the agent response should be synthesized, mapping from
  /// the language code to SynthesizeSpeechConfig.
  /// If the configuration for the specified language code is not found, the
  /// configuration for the root language code will be used. For example, if the
  /// map contains "en-us" and "en", and the specified language code is "en-gb",
  /// then "en" configuration will be used.
  /// Note: Language code is case-insensitive.
  /// Structure is documented below.
  final pulumi.Input<List<AppAudioProcessingConfigSynthesizeSpeechConfig>>? synthesizeSpeechConfigs;

  /// Creates a new [AppAudioProcessingConfig].
  /// [ambientSoundConfig] Configuration for the ambient sound to be played with the synthesized agent
  /// [bargeInConfig] Configuration for how the user barge-in activities should be handled.
  /// [inactivityTimeout] The duration of user inactivity (no speech or interaction) before the agent
  /// [synthesizeSpeechConfigs] Configuration of how the agent response should be synthesized, mapping from
  const AppAudioProcessingConfig({
    this.ambientSoundConfig,
    this.bargeInConfig,
    this.inactivityTimeout,
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambientSoundConfig': ?pulumi.Input.mapOptionalInputValue<AppAudioProcessingConfigAmbientSoundConfig, Map<String, dynamic>>(ambientSoundConfig, (value) => value.toMap()),
      'bargeInConfig': ?pulumi.Input.mapOptionalInputValue<AppAudioProcessingConfigBargeInConfig, Map<String, dynamic>>(bargeInConfig, (value) => value.toMap()),
      'inactivityTimeout': ?inactivityTimeout,
      'synthesizeSpeechConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppAudioProcessingConfigSynthesizeSpeechConfig>, List<Map<String, dynamic>>>(synthesizeSpeechConfigs, (value) => pulumi.Input.encodeList<AppAudioProcessingConfigSynthesizeSpeechConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppAudioProcessingConfig.fromMap(Map<String, dynamic> map) {
    return AppAudioProcessingConfig(
      ambientSoundConfig: (() { final guardedValue = map['ambientSoundConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppAudioProcessingConfigAmbientSoundConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bargeInConfig: (() { final guardedValue = map['bargeInConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppAudioProcessingConfigBargeInConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inactivityTimeout: (() { final guardedValue = map['inactivityTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synthesizeSpeechConfigs: (() { final guardedValue = map['synthesizeSpeechConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppAudioProcessingConfigSynthesizeSpeechConfig>(guardedValue, (value) => AppAudioProcessingConfigSynthesizeSpeechConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
