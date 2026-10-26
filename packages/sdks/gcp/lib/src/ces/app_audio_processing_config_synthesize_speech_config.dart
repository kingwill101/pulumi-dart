// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAudioProcessingConfigSynthesizeSpeechConfig {
  /// The instruction used to synthesize speech when using a generative model.
  final pulumi.Input<String?>? instruction;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> languageCode;
  /// The model used to synthesize audio.
  final pulumi.Input<String?>? model;
  /// The speaking rate/speed in the range [0.25, 2.0]. 1.0 is the normal native
  /// speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is
  /// half as fast. Values outside of the range [0.25, 2.0] will return an error.
  final pulumi.Input<double?>? speakingRate;
  /// The name of the voice. If not set, the service will choose a
  /// voice based on the other parameters such as language_code.
  /// For the list of available voices, please refer to Supported voices and
  /// languages from Cloud Text-to-Speech.
  final pulumi.Input<String?>? voice;

  /// Creates a new [AppAudioProcessingConfigSynthesizeSpeechConfig].
  /// [instruction] The instruction used to synthesize speech when using a generative model.
  /// [languageCode] The identifier for this object. Format specified above.
  /// [model] The model used to synthesize audio.
  /// [speakingRate] The speaking rate/speed in the range [0.25, 2.0]. 1.0 is the normal native
  /// [voice] The name of the voice. If not set, the service will choose a
  const AppAudioProcessingConfigSynthesizeSpeechConfig({
    this.instruction,
    required this.languageCode,
    this.model,
    this.speakingRate,
    this.voice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instruction': ?instruction,
      'languageCode': languageCode,
      'model': ?model,
      'speakingRate': ?speakingRate,
      'voice': ?voice,
    };
  }

  factory AppAudioProcessingConfigSynthesizeSpeechConfig.fromMap(Map<String, dynamic> map) {
    return AppAudioProcessingConfigSynthesizeSpeechConfig(
      instruction: (() { final guardedValue = map['instruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      speakingRate: (() { final guardedValue = map['speakingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      voice: (() { final guardedValue = map['voice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
