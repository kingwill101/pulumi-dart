// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_voice_selection_params.dart';

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig {
  /// Optional. An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  final pulumi.Input<List<String>>? effectsProfileId;
  /// Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  final pulumi.Input<double>? pitch;
  /// Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other values &lt; 0.25 or &gt; 4.0 will return an error.
  final pulumi.Input<double>? speakingRate;
  /// Optional. The desired voice of the synthesized audio.
  final pulumi.Input<GoogleCloudDialogflowV2beta1VoiceSelectionParams>? voice;
  /// Optional. Volume gain (in dB) of the normal native volume supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will play at approximately half the amplitude of the normal native signal amplitude. A value of +6.0 (dB) will play at approximately twice the amplitude of the normal native signal amplitude. We strongly recommend not to exceed +10 (dB) as there's usually no effective increase in loudness for any value greater than that.
  final pulumi.Input<double>? volumeGainDb;

  /// Creates a new [GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig].
  /// [effectsProfileId] Optional. An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  /// [pitch] Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  /// [speakingRate] Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other values &lt; 0.25 or &gt; 4.0 will return an error.
  /// [voice] Optional. The desired voice of the synthesized audio.
  /// [volumeGainDb] Optional. Volume gain (in dB) of the normal native volume supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will play at approximately half the amplitude of the normal native signal amplitude. A value of +6.0 (dB) will play at approximately twice the amplitude of the normal native signal amplitude. We strongly recommend not to exceed +10 (dB) as there's usually no effective increase in loudness for any value greater than that.
  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectsProfileId': ?effectsProfileId,
      'pitch': ?pitch,
      'speakingRate': ?speakingRate,
      'voice': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1VoiceSelectionParams, Map<String, dynamic>>(voice, (value) => value.toMap()),
      'volumeGainDb': ?volumeGainDb,
    };
  }

  factory GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig(
      effectsProfileId: (() { final guardedValue = map['effectsProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pitch: (() { final guardedValue = map['pitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      speakingRate: (() { final guardedValue = map['speakingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      voice: (() { final guardedValue = map['voice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1VoiceSelectionParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeGainDb: (() { final guardedValue = map['volumeGainDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

