// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxAgentSpeechToTextSettings {
  /// Whether to use speech adaptation for speech recognition.
  final pulumi.Input<bool>? enableSpeechAdaptation;

  /// Creates a new [CxAgentSpeechToTextSettings].
  /// [enableSpeechAdaptation] Whether to use speech adaptation for speech recognition.
  const CxAgentSpeechToTextSettings({
    this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSpeechAdaptation': ?enableSpeechAdaptation,
    };
  }

  factory CxAgentSpeechToTextSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentSpeechToTextSettings(
      enableSpeechAdaptation: (() { final guardedValue = map['enableSpeechAdaptation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

