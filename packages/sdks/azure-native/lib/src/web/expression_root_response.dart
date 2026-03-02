// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_error_info_response.dart';
import 'expression_response.dart';

/// The expression root.
class ExpressionRootResponse {
  /// The azure resource error info.
  final pulumi.Input<AzureResourceErrorInfoResponse>? error;
  /// The path.
  final pulumi.Input<String>? path;
  /// The sub expressions.
  final pulumi.Input<List<ExpressionResponse>>? subexpressions;
  /// The text.
  final pulumi.Input<String>? text;
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ExpressionRootResponse].
  /// [error] The azure resource error info.
  /// [path] The path.
  /// [subexpressions] The sub expressions.
  /// [text] The text.
  /// [value] Optional.
  ExpressionRootResponse({
    this.error,
    this.path,
    this.subexpressions,
    this.text,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<AzureResourceErrorInfoResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'path': ?path,
      'subexpressions': ?pulumi.Input.mapOptionalInputValue<List<ExpressionResponse>, List<Map<String, dynamic>>>(subexpressions, (value) => pulumi.Input.encodeList<ExpressionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': ?text,
      'value': ?value,
    };
  }

  factory ExpressionRootResponse.fromMap(Map<String, dynamic> map) {
    return ExpressionRootResponse(
      error: map['error'] == null ? null : (AzureResourceErrorInfoResponse.fromMap((map['error']! as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      subexpressions: map['subexpressions'] == null ? null : (pulumi.Input.decodeList<ExpressionResponse>(map['subexpressions']!, (value) => ExpressionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      text: map['text'] == null ? null : (map['text']! as String).input(),
      value: map['value'] == null ? null : (map['value']!).input(),
    );
  }
}

