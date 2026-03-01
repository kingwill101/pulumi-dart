// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_root_response.dart';

/// Result data returned by listWorkflowRunActionRepetitionExpressionTraces.
class ListWorkflowRunActionRepetitionExpressionTracesResult {
  final List<ExpressionRootResponse>? inputs;
  /// The link used to get the next page of recommendations.
  final String? nextLink;
  final dynamic value;

  /// Creates a new [ListWorkflowRunActionRepetitionExpressionTracesResult].
  /// [inputs] Optional.
  /// [nextLink] The link used to get the next page of recommendations.
  /// [value] Optional.
  ListWorkflowRunActionRepetitionExpressionTracesResult({
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

  factory ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionRepetitionExpressionTracesResult(
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<ExpressionRootResponse>(map['inputs'], (value) => ExpressionRootResponse.fromMap((value as Map).cast<String, dynamic>())),
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

