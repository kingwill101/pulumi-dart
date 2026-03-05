// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_condition_response.dart';

/// Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
class DiagnosticsResponse {
  /// A collection of zero or more conditions applicable to the resource, or to the job overall, that warrant customer attention.
  final pulumi.Input<List<DiagnosticConditionResponse>> conditions;

  /// Creates a new [DiagnosticsResponse].
  /// [conditions] A collection of zero or more conditions applicable to the resource, or to the job overall, that warrant customer attention.
  DiagnosticsResponse({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<DiagnosticConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DiagnosticConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticsResponse(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<DiagnosticConditionResponse>(map['conditions']!, (value) => DiagnosticConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

