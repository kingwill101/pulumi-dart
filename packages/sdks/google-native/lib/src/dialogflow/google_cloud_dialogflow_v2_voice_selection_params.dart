// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_voice_selection_params_ssml_gender.dart';

/// Description of which voice to use for speech synthesis.
class GoogleCloudDialogflowV2VoiceSelectionParams {
  /// Optional. The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and ssml_gender.
  final String? name;
  /// Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
  final GoogleCloudDialogflowV2VoiceSelectionParamsSsmlGender? ssmlGender;

  /// Creates a new [GoogleCloudDialogflowV2VoiceSelectionParams].
  /// [name] Optional. The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and ssml_gender.
  /// [ssmlGender] Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
  GoogleCloudDialogflowV2VoiceSelectionParams({
    this.name,
    this.ssmlGender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ssmlGender': ?ssmlGender == null ? null : ssmlGender!.value,
    };
  }

  factory GoogleCloudDialogflowV2VoiceSelectionParams.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2VoiceSelectionParams(
      name: map['name'] == null ? null : map['name'] as String,
      ssmlGender: map['ssmlGender'] == null ? null : GoogleCloudDialogflowV2VoiceSelectionParamsSsmlGender.fromValue(map['ssmlGender'] as String),
    );
  }
}

