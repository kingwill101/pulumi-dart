// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_trace_element_response.dart';

/// A collection of stack elements (frames) where an error occurred.
class StackTraceResponse {
  /// An array of stack elements.
  final pulumi.Input<List<StackTraceElementResponse>> elements;

  /// Creates a new [StackTraceResponse].
  /// [elements] An array of stack elements.
  const StackTraceResponse({
    required this.elements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elements': pulumi.Input.mapInputValue<List<StackTraceElementResponse>, List<Map<String, dynamic>>>(elements, (value) => pulumi.Input.encodeList<StackTraceElementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StackTraceResponse.fromMap(Map<String, dynamic> map) {
    return StackTraceResponse(
      elements: pulumi.Input.fromValue(pulumi.Input.decodeList<StackTraceElementResponse>(map['elements']!, (value) => StackTraceElementResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
