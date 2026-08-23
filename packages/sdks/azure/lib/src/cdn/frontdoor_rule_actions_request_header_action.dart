// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleActionsRequestHeaderAction {
  /// The action to be taken on the specified `headerName`. Possible values include `Append`, `Overwrite` or `Delete`.
  ///
  /// &gt; **Note:** `Append` causes the specified header to be added to the request with the specified value. If the header is already present, the value is appended to the existing header value using string concatenation. No delimiters are added. `Overwrite` causes specified header to be added to the request with the specified value. If the header is already present, the specified value overwrites the existing value. `Delete` causes the header to be deleted from the request.
  final pulumi.Input<String> headerAction;
  /// The name of the header to modify.
  final pulumi.Input<String> headerName;
  /// The value to append or overwrite.
  ///
  /// &gt; **Note:** `value` is required if the `headerAction` is set to `Append` or `Overwrite`.
  final pulumi.Input<String>? value;

  /// Creates a new [FrontdoorRuleActionsRequestHeaderAction].
  /// [headerAction] The action to be taken on the specified `headerName`. Possible values include `Append`, `Overwrite` or `Delete`.
  /// [headerName] The name of the header to modify.
  /// [value] The value to append or overwrite.
  const FrontdoorRuleActionsRequestHeaderAction({
    required this.headerAction,
    required this.headerName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerAction': headerAction,
      'headerName': headerName,
      'value': ?value,
    };
  }

  factory FrontdoorRuleActionsRequestHeaderAction.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleActionsRequestHeaderAction(
      headerAction: pulumi.Input.fromValue(map['headerAction'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
