// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagFileRagFileParsingConfigLayoutParser {
  /// The maximum number of requests the job is allowed to make to the
  /// Document AI processor per minute.
  final pulumi.Input<int?>? maxParsingRequestsPerMin;
  /// The full resource name of a Document AI processor or processor version
  /// of type `LAYOUT_PARSER_PROCESSOR`. Format:
  /// `projects/{project_id}/locations/{location}/processors/{processor_id}` or
  /// `projects/{project_id}/locations/{location}/processors/{processor_id}/processorVersions/{processor_version_id}`.
  final pulumi.Input<String?>? processorName;

  /// Creates a new [AiRagFileRagFileParsingConfigLayoutParser].
  /// [maxParsingRequestsPerMin] The maximum number of requests the job is allowed to make to the
  /// [processorName] The full resource name of a Document AI processor or processor version
  const AiRagFileRagFileParsingConfigLayoutParser({
    this.maxParsingRequestsPerMin,
    this.processorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxParsingRequestsPerMin': ?maxParsingRequestsPerMin,
      'processorName': ?processorName,
    };
  }

  factory AiRagFileRagFileParsingConfigLayoutParser.fromMap(Map<String, dynamic> map) {
    return AiRagFileRagFileParsingConfigLayoutParser(
      maxParsingRequestsPerMin: (() { final guardedValue = map['maxParsingRequestsPerMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      processorName: (() { final guardedValue = map['processorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
