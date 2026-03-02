// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_error_info_response.dart';

/// The expression.
class ExpressionResponse {
  /// The azure resource error info.
  final pulumi.Input<AzureResourceErrorInfoResponse>? error;
  /// The sub expressions.
  final pulumi.Input<List<ExpressionResponse>>? subexpressions;
  /// The text.
  final pulumi.Input<String>? text;
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ExpressionResponse].
  /// [error] The azure resource error info.
  /// [subexpressions] The sub expressions.
  /// [text] The text.
  /// [value] Optional.
  ExpressionResponse({
    this.error,
    this.subexpressions,
    this.text,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<AzureResourceErrorInfoResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'subexpressions': ?pulumi.Input.mapOptionalInputValue<List<ExpressionResponse>, List<Map<String, dynamic>>>(subexpressions, (value) => pulumi.Input.encodeList<ExpressionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': ?text,
      'value': ?value,
    };
  }

  factory ExpressionResponse.fromMap(Map<String, dynamic> map) {
    return ExpressionResponse(
      error: map['error'] == null ? null : (AzureResourceErrorInfoResponse.fromMap((map['error']! as Map).cast<String, dynamic>())).input(),
      subexpressions: map['subexpressions'] == null ? null : (pulumi.Input.decodeList<ExpressionResponse>(map['subexpressions']!, (value) => ExpressionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      text: map['text'] == null ? null : (map['text']! as String).input(),
      value: map['value'] == null ? null : (map['value']!).input(),
    );
  }
}

