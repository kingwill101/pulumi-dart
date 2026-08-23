// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_text_to_speech_settings_synthesize_speech_config_voice.dart';

class EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig {
  /// An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  final pulumi.Input<List<String>>? effectsProfileIds;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> language;
  /// Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  final pulumi.Input<double>? pitch;
  /// Speaking rate/speed, in the range [0.25, 4.0].
  final pulumi.Input<double>? speakingRate;
  /// The desired voice of the synthesized audio.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentTextToSpeechSettingsSynthesizeSpeechConfigVoice>? voice;
  /// Volume gain (in dB) of the normal native volume supported by the specific voice.
  final pulumi.Input<double>? volumeGainDb;

  /// Creates a new [EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig].
  /// [effectsProfileIds] An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  /// [language] The identifier for this object. Format specified above.
  /// [pitch] Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  /// [speakingRate] Speaking rate/speed, in the range [0.25, 4.0].
  /// [voice] The desired voice of the synthesized audio.
  /// [volumeGainDb] Volume gain (in dB) of the normal native volume supported by the specific voice.
  const EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig({
    this.effectsProfileIds,
    required this.language,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectsProfileIds': ?effectsProfileIds,
      'language': language,
      'pitch': ?pitch,
      'speakingRate': ?speakingRate,
      'voice': ?pulumi.Input.mapOptionalInputValue<EnvironmentTextToSpeechSettingsSynthesizeSpeechConfigVoice, Map<String, dynamic>>(voice, (value) => value.toMap()),
      'volumeGainDb': ?volumeGainDb,
    };
  }

  factory EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentTextToSpeechSettingsSynthesizeSpeechConfig(
      effectsProfileIds: (() { final guardedValue = map['effectsProfileIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      language: pulumi.Input.fromValue(map['language'] as String),
      pitch: (() { final guardedValue = map['pitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      speakingRate: (() { final guardedValue = map['speakingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      voice: (() { final guardedValue = map['voice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentTextToSpeechSettingsSynthesizeSpeechConfigVoice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeGainDb: (() { final guardedValue = map['volumeGainDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
