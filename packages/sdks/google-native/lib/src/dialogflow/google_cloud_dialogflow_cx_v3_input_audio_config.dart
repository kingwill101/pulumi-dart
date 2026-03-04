// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_barge_in_config.dart';
import 'google_cloud_dialogflow_cx_v3_input_audio_config_audio_encoding.dart';
import 'google_cloud_dialogflow_cx_v3_input_audio_config_model_variant.dart';

/// Instructs the speech recognizer on how to process the audio content.
class GoogleCloudDialogflowCxV3InputAudioConfig {
  /// Audio encoding of the audio content to process.
  final pulumi.Input<GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding>
  audioEncoding;

  /// Configuration of barge-in behavior during the streaming of input audio.
  final pulumi.Input<GoogleCloudDialogflowCxV3BargeInConfig>? bargeInConfig;

  /// Optional. If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.
  final pulumi.Input<bool>? enableWordInfo;

  /// Optional. Which Speech model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the InputAudioConfig. If enhanced speech model is enabled for the agent and an enhanced version of the specified model for the language does not exist, then the speech is recognized using the standard version of the specified model. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details. If you specify a model, the following models typically have the best performance: - phone_call (best for Agent Assist and telephony) - latest_short (best for Dialogflow non-telephony) - command_and_search (best for very short utterances and commands)
  final pulumi.Input<String>? model;

  /// Optional. Which variant of the Speech model to use.
  final pulumi.Input<GoogleCloudDialogflowCxV3InputAudioConfigModelVariant>?
  modelVariant;

  /// Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. See [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.
  final pulumi.Input<List<String>>? phraseHints;

  /// Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.
  final pulumi.Input<int>? sampleRateHertz;

  /// Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods.
  final pulumi.Input<bool>? singleUtterance;

  /// Creates a new [GoogleCloudDialogflowCxV3InputAudioConfig].
  /// [audioEncoding] Audio encoding of the audio content to process.
  /// [bargeInConfig] Configuration of barge-in behavior during the streaming of input audio.
  /// [enableWordInfo] Optional. If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.
  /// [model] Optional. Which Speech model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the InputAudioConfig. If enhanced speech model is enabled for the agent and an enhanced version of the specified model for the language does not exist, then the speech is recognized using the standard version of the specified model. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details. If you specify a model, the following models typically have the best performance: - phone_call (best for Agent Assist and telephony) - latest_short (best for Dialogflow non-telephony) - command_and_search (best for very short utterances and commands)
  /// [modelVariant] Optional. Which variant of the Speech model to use.
  /// [phraseHints] Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. See [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.
  /// [sampleRateHertz] Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.
  /// [singleUtterance] Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods.
  GoogleCloudDialogflowCxV3InputAudioConfig({
    required this.audioEncoding,
    this.bargeInConfig,
    this.enableWordInfo,
    this.model,
    this.modelVariant,
    this.phraseHints,
    this.sampleRateHertz,
    this.singleUtterance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioEncoding':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding,
            String
          >(audioEncoding, (value) => value.wireValue),
      'bargeInConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3BargeInConfig,
            Map<String, dynamic>
          >(bargeInConfig, (value) => value.toMap()),
      'enableWordInfo': ?enableWordInfo,
      'model': ?model,
      'modelVariant':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3InputAudioConfigModelVariant,
            String
          >(modelVariant, (value) => value.wireValue),
      'phraseHints': ?phraseHints,
      'sampleRateHertz': ?sampleRateHertz,
      'singleUtterance': ?singleUtterance,
    };
  }

  factory GoogleCloudDialogflowCxV3InputAudioConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3InputAudioConfig(
      audioEncoding: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding.fromValue(
          map['audioEncoding']! as String,
        ),
      ),
      bargeInConfig: (() {
        final guardedValue = map['bargeInConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3BargeInConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableWordInfo: (() {
        final guardedValue = map['enableWordInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelVariant: (() {
        final guardedValue = map['modelVariant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3InputAudioConfigModelVariant.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      phraseHints: (() {
        final guardedValue = map['phraseHints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sampleRateHertz: (() {
        final guardedValue = map['sampleRateHertz'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      singleUtterance: (() {
        final guardedValue = map['singleUtterance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
