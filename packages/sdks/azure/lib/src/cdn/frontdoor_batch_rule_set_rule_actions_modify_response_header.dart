// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleActionsModifyResponseHeader {
  /// The name of the header to modify.
  final pulumi.Input<String> headerName;
  /// The value to append or overwrite.
  ///
  /// &gt; **Note:** `headerValue` is required when `operator` is set to `Append` or `Overwrite`, and must not be set when `operator` is set to `Delete`.
  final pulumi.Input<String?>? headerValue;
  /// The action to take on `headerName`. Possible values are `Append`, `Overwrite`, and `Delete`.
  final pulumi.Input<String> operator;

  /// Creates a new [FrontdoorBatchRuleSetRuleActionsModifyResponseHeader].
  /// [headerName] The name of the header to modify.
  /// [headerValue] The value to append or overwrite.
  /// [operator] The action to take on `headerName`. Possible values are `Append`, `Overwrite`, and `Delete`.
  const FrontdoorBatchRuleSetRuleActionsModifyResponseHeader({
    required this.headerName,
    this.headerValue,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': ?headerValue,
      'operator': operator,
    };
  }

  factory FrontdoorBatchRuleSetRuleActionsModifyResponseHeader.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleActionsModifyResponseHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: (() { final guardedValue = map['headerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
    );
  }
}
