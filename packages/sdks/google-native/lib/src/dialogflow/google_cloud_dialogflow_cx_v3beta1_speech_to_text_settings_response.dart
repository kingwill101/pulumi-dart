// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings related to speech recognition.
class GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse {
  /// Whether to use speech adaptation for speech recognition.
  final pulumi.Input<bool> enableSpeechAdaptation;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse].
  /// [enableSpeechAdaptation] Whether to use speech adaptation for speech recognition.
  GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse({
    required this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSpeechAdaptation': enableSpeechAdaptation,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse(
      enableSpeechAdaptation: pulumi.Input.fromValue(map['enableSpeechAdaptation'] as bool),
    );
  }
}

