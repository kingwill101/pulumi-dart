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
      'inputs': ?(() {
        final guardedValue = inputs;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ExpressionRootResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'nextLink': ?nextLink,
      'value': ?value,
    };
  }

  factory ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWorkflowRunActionRepetitionExpressionTracesResult(
      inputs: (() {
        final guardedValue = map['inputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ExpressionRootResponse>(
          guardedValue,
          (value) => ExpressionRootResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
    );
  }
}
