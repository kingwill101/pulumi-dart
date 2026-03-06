// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_trace_element_response_workflowexecutions_v1beta.dart';

/// A collection of stack elements (frames) where an error occurred.
class StackTraceResponseWorkflowexecutionsV1beta {
  /// An array of stack elements.
  final pulumi.Input<List<StackTraceElementResponseWorkflowexecutionsV1beta>> elements;

  /// Creates a new [StackTraceResponseWorkflowexecutionsV1beta].
  /// [elements] An array of stack elements.
  const StackTraceResponseWorkflowexecutionsV1beta({
    required this.elements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elements': pulumi.Input.mapInputValue<List<StackTraceElementResponseWorkflowexecutionsV1beta>, List<Map<String, dynamic>>>(elements, (value) => pulumi.Input.encodeList<StackTraceElementResponseWorkflowexecutionsV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StackTraceResponseWorkflowexecutionsV1beta.fromMap(Map<String, dynamic> map) {
    return StackTraceResponseWorkflowexecutionsV1beta(
      elements: pulumi.Input.fromValue(pulumi.Input.decodeList<StackTraceElementResponseWorkflowexecutionsV1beta>(map['elements']!, (value) => StackTraceElementResponseWorkflowexecutionsV1beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

