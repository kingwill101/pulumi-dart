// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_speech_to_text_config_speech_model_variant.dart';

/// Configures speech transcription for ConversationProfile.
class GoogleCloudDialogflowV2SpeechToTextConfig {
  /// Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then a default model is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.
  final pulumi.Input<String>? model;
  /// The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  final pulumi.Input<GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant>? speechModelVariant;
  /// Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  final pulumi.Input<bool>? useTimeoutBasedEndpointing;

  /// Creates a new [GoogleCloudDialogflowV2SpeechToTextConfig].
  /// [model] Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then a default model is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.
  /// [speechModelVariant] The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  /// [useTimeoutBasedEndpointing] Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  GoogleCloudDialogflowV2SpeechToTextConfig({
    this.model,
    this.speechModelVariant,
    this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'speechModelVariant': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant, String>(speechModelVariant, (value) => value.wireValue),
      'useTimeoutBasedEndpointing': ?useTimeoutBasedEndpointing,
    };
  }

  factory GoogleCloudDialogflowV2SpeechToTextConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SpeechToTextConfig(
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      speechModelVariant: (() { final guardedValue = map['speechModelVariant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant.fromValue(guardedValue as String)); })(),
      useTimeoutBasedEndpointing: (() { final guardedValue = map['useTimeoutBasedEndpointing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

