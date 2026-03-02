// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_speech_to_text_config_speech_model_variant.dart';

/// Configures speech transcription for ConversationProfile.
class GoogleCloudDialogflowV2beta1SpeechToTextConfig {
  /// Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then a default model is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.
  final pulumi.Input<String>? model;
  /// The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  final pulumi.Input<GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant>? speechModelVariant;
  /// Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  final pulumi.Input<bool>? useTimeoutBasedEndpointing;

  /// Creates a new [GoogleCloudDialogflowV2beta1SpeechToTextConfig].
  /// [model] Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then a default model is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.
  /// [speechModelVariant] The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  /// [useTimeoutBasedEndpointing] Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  GoogleCloudDialogflowV2beta1SpeechToTextConfig({
    this.model,
    this.speechModelVariant,
    this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'speechModelVariant': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant, String>(speechModelVariant, (value) => value.value),
      'useTimeoutBasedEndpointing': ?useTimeoutBasedEndpointing,
    };
  }

  factory GoogleCloudDialogflowV2beta1SpeechToTextConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1SpeechToTextConfig(
      model: map['model'] == null ? null : (map['model']! as String).input(),
      speechModelVariant: map['speechModelVariant'] == null ? null : (GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant.fromValue(map['speechModelVariant']! as String)).input(),
      useTimeoutBasedEndpointing: map['useTimeoutBasedEndpointing'] == null ? null : (map['useTimeoutBasedEndpointing']! as bool).input(),
    );
  }
}

