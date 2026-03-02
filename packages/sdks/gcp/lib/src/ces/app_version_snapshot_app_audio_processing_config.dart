// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_audio_processing_config_ambient_sound_config.dart';
import 'app_version_snapshot_app_audio_processing_config_barge_in_config.dart';
import 'app_version_snapshot_app_audio_processing_config_synthesize_speech_config.dart';

class AppVersionSnapshotAppAudioProcessingConfig {
  /// (Output)
  /// Configuration for the ambient sound to be played with the synthesized agent
  /// response, to enhance the naturalness of the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig>>? ambientSoundConfigs;
  /// (Output)
  /// Configuration for how the user barge-in activities should be handled.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppAudioProcessingConfigBargeInConfig>>? bargeInConfigs;
  /// (Output)
  /// The duration of user inactivity (no speech or interaction) before the agent
  /// prompts the user for reengagement. If not set, the agent will not prompt
  /// the user for reengagement.
  final pulumi.Input<String>? inactivityTimeout;
  /// (Output)
  /// Configuration of how the agent response should be synthesized, mapping from
  /// the language code to SynthesizeSpeechConfig.
  /// If the configuration for the specified language code is not found, the
  /// configuration for the root language code will be used. For example, if the
  /// map contains "en-us" and "en", and the specified language code is "en-gb",
  /// then "en" configuration will be used.
  /// Note: Language code is case-insensitive.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig>>? synthesizeSpeechConfigs;

  /// Creates a new [AppVersionSnapshotAppAudioProcessingConfig].
  /// [ambientSoundConfigs] (Output)
  /// [bargeInConfigs] (Output)
  /// [inactivityTimeout] (Output)
  /// [synthesizeSpeechConfigs] (Output)
  AppVersionSnapshotAppAudioProcessingConfig({
    this.ambientSoundConfigs,
    this.bargeInConfigs,
    this.inactivityTimeout,
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambientSoundConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig>, List<Map<String, dynamic>>>(ambientSoundConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bargeInConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppAudioProcessingConfigBargeInConfig>, List<Map<String, dynamic>>>(bargeInConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppAudioProcessingConfigBargeInConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inactivityTimeout': ?inactivityTimeout,
      'synthesizeSpeechConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig>, List<Map<String, dynamic>>>(synthesizeSpeechConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAppAudioProcessingConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppAudioProcessingConfig(
      ambientSoundConfigs: map['ambientSoundConfigs'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig>(map['ambientSoundConfigs'], (value) => AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bargeInConfigs: map['bargeInConfigs'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotAppAudioProcessingConfigBargeInConfig>(map['bargeInConfigs'], (value) => AppVersionSnapshotAppAudioProcessingConfigBargeInConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inactivityTimeout: map['inactivityTimeout'] == null ? null : (map['inactivityTimeout'] as String).input(),
      synthesizeSpeechConfigs: map['synthesizeSpeechConfigs'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig>(map['synthesizeSpeechConfigs'], (value) => AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

