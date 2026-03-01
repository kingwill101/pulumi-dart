// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_root_response.dart';

/// Result data returned by listWorkflowRunActionExpressionTraces.
class ListWorkflowRunActionExpressionTracesResult {
  final List<ExpressionRootResponse>? inputs;
  /// The link used to get the next page of recommendations.
  final String? nextLink;
  final dynamic value;

  /// Creates a new [ListWorkflowRunActionExpressionTracesResult].
  /// [inputs] Optional.
  /// [nextLink] The link used to get the next page of recommendations.
  /// [value] Optional.
  ListWorkflowRunActionExpressionTracesResult({
    this.inputs,
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?inputs == null ? null : pulumi.Input.encodeList<ExpressionRootResponse, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'nextLink': ?nextLink,
      'value': ?value,
    };
  }

  factory ListWorkflowRunActionExpressionTracesResult.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionExpressionTracesResult(
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<ExpressionRootResponse>(map['inputs'], (value) => ExpressionRootResponse.fromMap((value as Map).cast<String, dynamic>())),
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

