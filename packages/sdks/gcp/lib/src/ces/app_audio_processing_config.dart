// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_audio_processing_config_ambient_sound_config.dart';
import 'app_audio_processing_config_barge_in_config.dart';
import 'app_audio_processing_config_synthesize_speech_config.dart';

class AppAudioProcessingConfig {
  /// Configuration for the ambient sound to be played with the synthesized agent
  /// response, to enhance the naturalness of the conversation.
  /// Structure is documented below.
  final AppAudioProcessingConfigAmbientSoundConfig? ambientSoundConfig;
  /// Configuration for how the user barge-in activities should be handled.
  /// Structure is documented below.
  final AppAudioProcessingConfigBargeInConfig? bargeInConfig;
  /// The duration of user inactivity (no speech or interaction) before the agent
  /// prompts the user for reengagement. If not set, the agent will not prompt
  /// the user for reengagement.
  final String? inactivityTimeout;
  /// Configuration of how the agent response should be synthesized, mapping from
  /// the language code to SynthesizeSpeechConfig.
  /// If the configuration for the specified language code is not found, the
  /// configuration for the root language code will be used. For example, if the
  /// map contains "en-us" and "en", and the specified language code is "en-gb",
  /// then "en" configuration will be used.
  /// Note: Language code is case-insensitive.
  /// Structure is documented below.
  final List<AppAudioProcessingConfigSynthesizeSpeechConfig>? synthesizeSpeechConfigs;

  /// Creates a new [AppAudioProcessingConfig].
  /// [ambientSoundConfig] Configuration for the ambient sound to be played with the synthesized agent
  /// [bargeInConfig] Configuration for how the user barge-in activities should be handled.
  /// [inactivityTimeout] The duration of user inactivity (no speech or interaction) before the agent
  /// [synthesizeSpeechConfigs] Configuration of how the agent response should be synthesized, mapping from
  AppAudioProcessingConfig({
    this.ambientSoundConfig,
    this.bargeInConfig,
    this.inactivityTimeout,
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambientSoundConfig': ?ambientSoundConfig == null ? null : ambientSoundConfig!.toMap(),
      'bargeInConfig': ?bargeInConfig == null ? null : bargeInConfig!.toMap(),
      'inactivityTimeout': ?inactivityTimeout,
      'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs == null ? null : pulumi.Input.encodeList<AppAudioProcessingConfigSynthesizeSpeechConfig, Map<String, dynamic>>(synthesizeSpeechConfigs!, (value) => value.toMap()),
    };
  }

  factory AppAudioProcessingConfig.fromMap(Map<String, dynamic> map) {
    return AppAudioProcessingConfig(
      ambientSoundConfig: map['ambientSoundConfig'] == null ? null : AppAudioProcessingConfigAmbientSoundConfig.fromMap((map['ambientSoundConfig'] as Map).cast<String, dynamic>()),
      bargeInConfig: map['bargeInConfig'] == null ? null : AppAudioProcessingConfigBargeInConfig.fromMap((map['bargeInConfig'] as Map).cast<String, dynamic>()),
      inactivityTimeout: map['inactivityTimeout'] == null ? null : map['inactivityTimeout'] as String,
      synthesizeSpeechConfigs: map['synthesizeSpeechConfigs'] == null ? null : pulumi.Input.decodeList<AppAudioProcessingConfigSynthesizeSpeechConfig>(map['synthesizeSpeechConfigs'], (value) => AppAudioProcessingConfigSynthesizeSpeechConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

