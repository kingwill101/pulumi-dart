// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileSttConfigGeminiAsrConfig {
  /// End of speech sensitivity.
  /// Possible values are: `END_SENSITIVITY_HIGH`, `END_SENSITIVITY_LOW`.
  final pulumi.Input<String?>? endOfSpeechSensitivity;
  /// The Gemini ASR model ID used for transcription. This value overrides the default model ID configured on the server.
  final pulumi.Input<String?>? modelId;
  /// The required duration of detected speech before start-of-speech is committed.
  final pulumi.Input<int?>? prefixPaddingMs;
  /// The required duration of detected silence (or non-speech) before end-of-speech is committed.
  final pulumi.Input<int?>? silenceDurationMs;
  /// Start of speech sensitivity.
  /// Possible values are: `START_SENSITIVITY_HIGH`, `START_SENSITIVITY_LOW`.
  final pulumi.Input<String?>? startOfSpeechSensitivity;

  /// Creates a new [ConversationProfileSttConfigGeminiAsrConfig].
  /// [endOfSpeechSensitivity] End of speech sensitivity.
  /// [modelId] The Gemini ASR model ID used for transcription. This value overrides the default model ID configured on the server.
  /// [prefixPaddingMs] The required duration of detected speech before start-of-speech is committed.
  /// [silenceDurationMs] The required duration of detected silence (or non-speech) before end-of-speech is committed.
  /// [startOfSpeechSensitivity] Start of speech sensitivity.
  const ConversationProfileSttConfigGeminiAsrConfig({
    this.endOfSpeechSensitivity,
    this.modelId,
    this.prefixPaddingMs,
    this.silenceDurationMs,
    this.startOfSpeechSensitivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endOfSpeechSensitivity': ?endOfSpeechSensitivity,
      'modelId': ?modelId,
      'prefixPaddingMs': ?prefixPaddingMs,
      'silenceDurationMs': ?silenceDurationMs,
      'startOfSpeechSensitivity': ?startOfSpeechSensitivity,
    };
  }

  factory ConversationProfileSttConfigGeminiAsrConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileSttConfigGeminiAsrConfig(
      endOfSpeechSensitivity: (() { final guardedValue = map['endOfSpeechSensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixPaddingMs: (() { final guardedValue = map['prefixPaddingMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      silenceDurationMs: (() { final guardedValue = map['silenceDurationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      startOfSpeechSensitivity: (() { final guardedValue = map['startOfSpeechSensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
