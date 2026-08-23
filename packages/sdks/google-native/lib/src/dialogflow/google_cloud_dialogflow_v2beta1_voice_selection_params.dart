// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_voice_selection_params_ssml_gender.dart';

/// Description of which voice to use for speech synthesis.
class GoogleCloudDialogflowV2beta1VoiceSelectionParams {
  /// Optional. The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and ssml_gender. For the list of available voices, please refer to [Supported voices and languages](https://cloud.google.com/text-to-speech/docs/voices).
  final pulumi.Input<String>? name;
  /// Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
  final pulumi.Input<GoogleCloudDialogflowV2beta1VoiceSelectionParamsSsmlGender>? ssmlGender;

  /// Creates a new [GoogleCloudDialogflowV2beta1VoiceSelectionParams].
  /// [name] Optional. The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and ssml_gender. For the list of available voices, please refer to [Supported voices and languages](https://cloud.google.com/text-to-speech/docs/voices).
  /// [ssmlGender] Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
  const GoogleCloudDialogflowV2beta1VoiceSelectionParams({
    this.name,
    this.ssmlGender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ssmlGender': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1VoiceSelectionParamsSsmlGender, String>(ssmlGender, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowV2beta1VoiceSelectionParams.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1VoiceSelectionParams(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssmlGender: (() { final guardedValue = map['ssmlGender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1VoiceSelectionParamsSsmlGender.fromValue(guardedValue as String)); })(),
    );
  }
}
