// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader {
  /// The name of the response header.
  final pulumi.Input<String> headerName;
  /// The value associated with the response header action.
  final pulumi.Input<String> headerValue;
  /// The operator for this condition.
  final pulumi.Input<String> operator;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader].
  /// [headerName] The name of the response header.
  /// [headerValue] The value associated with the response header action.
  /// [operator] The operator for this condition.
  const GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader({
    required this.headerName,
    required this.headerValue,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
      'operator': operator,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
    );
  }
}
