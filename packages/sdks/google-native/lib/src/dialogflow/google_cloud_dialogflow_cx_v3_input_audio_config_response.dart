// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_barge_in_config_response.dart';

/// Instructs the speech recognizer on how to process the audio content.
class GoogleCloudDialogflowCxV3InputAudioConfigResponse {
  /// Audio encoding of the audio content to process.
  final pulumi.Input<String> audioEncoding;
  /// Configuration of barge-in behavior during the streaming of input audio.
  final pulumi.Input<GoogleCloudDialogflowCxV3BargeInConfigResponse> bargeInConfig;
  /// Optional. If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.
  final pulumi.Input<bool> enableWordInfo;
  /// Optional. Which Speech model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the InputAudioConfig. If enhanced speech model is enabled for the agent and an enhanced version of the specified model for the language does not exist, then the speech is recognized using the standard version of the specified model. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details. If you specify a model, the following models typically have the best performance: - phone_call (best for Agent Assist and telephony) - latest_short (best for Dialogflow non-telephony) - command_and_search (best for very short utterances and commands)
  final pulumi.Input<String> model;
  /// Optional. Which variant of the Speech model to use.
  final pulumi.Input<String> modelVariant;
  /// Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. See [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.
  final pulumi.Input<List<String>> phraseHints;
  /// Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.
  final pulumi.Input<int> sampleRateHertz;
  /// Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods.
  final pulumi.Input<bool> singleUtterance;

  /// Creates a new [GoogleCloudDialogflowCxV3InputAudioConfigResponse].
  /// [audioEncoding] Audio encoding of the audio content to process.
  /// [bargeInConfig] Configuration of barge-in behavior during the streaming of input audio.
  /// [enableWordInfo] Optional. If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.
  /// [model] Optional. Which Speech model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the InputAudioConfig. If enhanced speech model is enabled for the agent and an enhanced version of the specified model for the language does not exist, then the speech is recognized using the standard version of the specified model. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details. If you specify a model, the following models typically have the best performance: - phone_call (best for Agent Assist and telephony) - latest_short (best for Dialogflow non-telephony) - command_and_search (best for very short utterances and commands)
  /// [modelVariant] Optional. Which variant of the Speech model to use.
  /// [phraseHints] Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. See [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.
  /// [sampleRateHertz] Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.
  /// [singleUtterance] Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods.
  GoogleCloudDialogflowCxV3InputAudioConfigResponse({
    required this.audioEncoding,
    required this.bargeInConfig,
    required this.enableWordInfo,
    required this.model,
    required this.modelVariant,
    required this.phraseHints,
    required this.sampleRateHertz,
    required this.singleUtterance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioEncoding': audioEncoding,
      'bargeInConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3BargeInConfigResponse, Map<String, dynamic>>(bargeInConfig, (value) => value.toMap()),
      'enableWordInfo': enableWordInfo,
      'model': model,
      'modelVariant': modelVariant,
      'phraseHints': phraseHints,
      'sampleRateHertz': sampleRateHertz,
      'singleUtterance': singleUtterance,
    };
  }

  factory GoogleCloudDialogflowCxV3InputAudioConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3InputAudioConfigResponse(
      audioEncoding: (map['audioEncoding'] as String).input(),
      bargeInConfig: (GoogleCloudDialogflowCxV3BargeInConfigResponse.fromMap((map['bargeInConfig'] as Map).cast<String, dynamic>())).input(),
      enableWordInfo: (map['enableWordInfo'] as bool).input(),
      model: (map['model'] as String).input(),
      modelVariant: (map['modelVariant'] as String).input(),
      phraseHints: ((map['phraseHints'] as List).cast<String>()).input(),
      sampleRateHertz: (map['sampleRateHertz'] as int).input(),
      singleUtterance: (map['singleUtterance'] as bool).input(),
    );
  }
}

