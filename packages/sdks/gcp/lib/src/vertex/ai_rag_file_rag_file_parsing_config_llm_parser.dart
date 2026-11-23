// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagFileRagFileParsingConfigLlmParser {
  /// The prompt to use for parsing. If not specified, a default prompt is used.
  final pulumi.Input<String?>? customParsingPrompt;
  /// The maximum number of requests the job is allowed to make to the LLM
  /// model per minute.
  final pulumi.Input<int?>? maxParsingRequestsPerMin;
  /// The name of a LLM model used for parsing. Format:
  /// `projects/{project_id}/locations/{location}/publishers/{publisher}/models/{model}`.
  final pulumi.Input<String?>? modelName;

  /// Creates a new [AiRagFileRagFileParsingConfigLlmParser].
  /// [customParsingPrompt] The prompt to use for parsing. If not specified, a default prompt is used.
  /// [maxParsingRequestsPerMin] The maximum number of requests the job is allowed to make to the LLM
  /// [modelName] The name of a LLM model used for parsing. Format:
  const AiRagFileRagFileParsingConfigLlmParser({
    this.customParsingPrompt,
    this.maxParsingRequestsPerMin,
    this.modelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customParsingPrompt': ?customParsingPrompt,
      'maxParsingRequestsPerMin': ?maxParsingRequestsPerMin,
      'modelName': ?modelName,
    };
  }

  factory AiRagFileRagFileParsingConfigLlmParser.fromMap(Map<String, dynamic> map) {
    return AiRagFileRagFileParsingConfigLlmParser(
      customParsingPrompt: (() { final guardedValue = map['customParsingPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxParsingRequestsPerMin: (() { final guardedValue = map['maxParsingRequestsPerMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
