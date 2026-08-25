// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig {
  /// (Required) The identifier for this object. Format specified above.
  final pulumi.Input<String> languageCode;
  /// (Output)
  /// The speaking rate/speed in the range [0.25, 2.0]. 1.0 is the normal native
  /// speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is
  /// half as fast. Values outside of the range [0.25, 2.0] will return an error.
  final pulumi.Input<double?>? speakingRate;
  /// (Output)
  /// The name of the voice. If not set, the service will choose a
  /// voice based on the other parameters such as language_code.
  /// For the list of available voices, please refer to Supported voices and
  /// languages from Cloud Text-to-Speech.
  final pulumi.Input<String?>? voice;

  /// Creates a new [AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig].
  /// [languageCode] (Required) The identifier for this object. Format specified above.
  /// [speakingRate] (Output)
  /// [voice] (Output)
  const AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig({
    required this.languageCode,
    this.speakingRate,
    this.voice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'speakingRate': ?speakingRate,
      'voice': ?voice,
    };
  }

  factory AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig(
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      speakingRate: (() { final guardedValue = map['speakingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      voice: (() { final guardedValue = map['voice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
