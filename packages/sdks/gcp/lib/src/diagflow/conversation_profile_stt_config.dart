// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_stt_config_gemini_asr_config.dart';

class ConversationProfileSttConfig {
  /// Audio encoding of the audio content to process.
  /// Possible values are: `AUDIO_ENCODING_UNSPECIFIED`, `AUDIO_ENCODING_LINEAR_16`, `AUDIO_ENCODING_FLAC`, `AUDIO_ENCODING_MULAW`, `AUDIO_ENCODING_AMR`, `AUDIO_ENCODING_AMR_WB`, `AUDIO_ENCODING_OGG_OPUS`, `AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE`.
  final pulumi.Input<String?>? audioEncoding;
  /// If true, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words.
  final pulumi.Input<bool?>? enableWordInfo;
  /// Configuration for using Gemini ASR models served via Vertex AI, overriding the default Gemini ASR model or providing additional advanced parameters. This field is only used when `useGeminiAsr` is true.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileSttConfigGeminiAsrConfig?>? geminiAsrConfig;
  /// The language of the supplied audio.
  final pulumi.Input<String?>? languageCode;
  /// Which Speech model to select.
  /// Leave this field unspecified to use Agent Speech settings for model selection.
  final pulumi.Input<String?>? model;
  /// Sample rate (in Hertz) of the audio content sent in the query.
  final pulumi.Input<int?>? sampleRateHertz;
  /// The speech model used in speech to text.
  /// Possible values are: `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE`, `USE_STANDARD`, `USE_ENHANCED`.
  final pulumi.Input<String?>? speechModelVariant;
  /// If true, Gemini ASR will be used for transcription instead of Cloud Speech-to-Text.
  final pulumi.Input<bool?>? useGeminiAsr;
  /// Use timeout based endpointing, interpreting endpointer sensitivity as seconds of timeout value.
  final pulumi.Input<bool?>? useTimeoutBasedEndpointing;

  /// Creates a new [ConversationProfileSttConfig].
  /// [audioEncoding] Audio encoding of the audio content to process.
  /// [enableWordInfo] If true, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words.
  /// [geminiAsrConfig] Configuration for using Gemini ASR models served via Vertex AI, overriding the default Gemini ASR model or providing additional advanced parameters. This field is only used when `useGeminiAsr` is true.
  /// [languageCode] The language of the supplied audio.
  /// [model] Which Speech model to select.
  /// [sampleRateHertz] Sample rate (in Hertz) of the audio content sent in the query.
  /// [speechModelVariant] The speech model used in speech to text.
  /// [useGeminiAsr] If true, Gemini ASR will be used for transcription instead of Cloud Speech-to-Text.
  /// [useTimeoutBasedEndpointing] Use timeout based endpointing, interpreting endpointer sensitivity as seconds of timeout value.
  const ConversationProfileSttConfig({
    this.audioEncoding,
    this.enableWordInfo,
    this.geminiAsrConfig,
    this.languageCode,
    this.model,
    this.sampleRateHertz,
    this.speechModelVariant,
    this.useGeminiAsr,
    this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioEncoding': ?audioEncoding,
      'enableWordInfo': ?enableWordInfo,
      'geminiAsrConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileSttConfigGeminiAsrConfig, Map<String, dynamic>>(geminiAsrConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'model': ?model,
      'sampleRateHertz': ?sampleRateHertz,
      'speechModelVariant': ?speechModelVariant,
      'useGeminiAsr': ?useGeminiAsr,
      'useTimeoutBasedEndpointing': ?useTimeoutBasedEndpointing,
    };
  }

  factory ConversationProfileSttConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileSttConfig(
      audioEncoding: (() { final guardedValue = map['audioEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableWordInfo: (() { final guardedValue = map['enableWordInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geminiAsrConfig: (() { final guardedValue = map['geminiAsrConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileSttConfigGeminiAsrConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRateHertz: (() { final guardedValue = map['sampleRateHertz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      speechModelVariant: (() { final guardedValue = map['speechModelVariant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useGeminiAsr: (() { final guardedValue = map['useGeminiAsr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useTimeoutBasedEndpointing: (() { final guardedValue = map['useTimeoutBasedEndpointing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
