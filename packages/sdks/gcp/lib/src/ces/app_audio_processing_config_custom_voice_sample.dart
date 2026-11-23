// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAudioProcessingConfigCustomVoiceSample {
  /// Consent audio for voice cloning.
  final pulumi.Input<String?>? consentAudioGcsUri;
  /// The user-defined name for the custom voice sample.
  final pulumi.Input<String?>? name;
  /// Text for synthesizing preview audio for custom voice.
  final pulumi.Input<String?>? previewText;
  /// Natural language instructions for voice style, tone, pacing, or
  /// pronunciation.
  final pulumi.Input<String?>? voiceInstruction;
  /// The Cloud Storage URI to the audio sample for voice cloning. The
  /// audio sample should be a mono-channel, 24kHz WAV file.
  final pulumi.Input<String?>? voiceSampleGcsUri;

  /// Creates a new [AppAudioProcessingConfigCustomVoiceSample].
  /// [consentAudioGcsUri] Consent audio for voice cloning.
  /// [name] The user-defined name for the custom voice sample.
  /// [previewText] Text for synthesizing preview audio for custom voice.
  /// [voiceInstruction] Natural language instructions for voice style, tone, pacing, or
  /// [voiceSampleGcsUri] The Cloud Storage URI to the audio sample for voice cloning. The
  const AppAudioProcessingConfigCustomVoiceSample({
    this.consentAudioGcsUri,
    this.name,
    this.previewText,
    this.voiceInstruction,
    this.voiceSampleGcsUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentAudioGcsUri': ?consentAudioGcsUri,
      'name': ?name,
      'previewText': ?previewText,
      'voiceInstruction': ?voiceInstruction,
      'voiceSampleGcsUri': ?voiceSampleGcsUri,
    };
  }

  factory AppAudioProcessingConfigCustomVoiceSample.fromMap(Map<String, dynamic> map) {
    return AppAudioProcessingConfigCustomVoiceSample(
      consentAudioGcsUri: (() { final guardedValue = map['consentAudioGcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewText: (() { final guardedValue = map['previewText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voiceInstruction: (() { final guardedValue = map['voiceInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voiceSampleGcsUri: (() { final guardedValue = map['voiceSampleGcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
