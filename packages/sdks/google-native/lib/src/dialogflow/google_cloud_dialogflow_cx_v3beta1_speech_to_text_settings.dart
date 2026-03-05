// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings related to speech recognition.
class GoogleCloudDialogflowCxV3beta1SpeechToTextSettings {
  /// Whether to use speech adaptation for speech recognition.
  final pulumi.Input<bool>? enableSpeechAdaptation;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1SpeechToTextSettings].
  /// [enableSpeechAdaptation] Whether to use speech adaptation for speech recognition.
  GoogleCloudDialogflowCxV3beta1SpeechToTextSettings({
    this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSpeechAdaptation': ?enableSpeechAdaptation,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1SpeechToTextSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1SpeechToTextSettings(
      enableSpeechAdaptation: (() { final guardedValue = map['enableSpeechAdaptation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

