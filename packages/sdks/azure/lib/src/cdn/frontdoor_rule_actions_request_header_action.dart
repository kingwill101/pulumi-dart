// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRuleActionsRequestHeaderAction {
  /// The action to be taken on the specified `header_name`. Possible values include `Append`, `Overwrite` or `Delete`.
  ///
  /// > **Note:** `Append` causes the specified header to be added to the request with the specified value. If the header is already present, the value is appended to the existing header value using string concatenation. No delimiters are added. `Overwrite` causes specified header to be added to the request with the specified value. If the header is already present, the specified value overwrites the existing value. `Delete` causes the header to be deleted from the request.
  final String headerAction;
  /// The name of the header to modify.
  final String headerName;
  /// The value to append or overwrite.
  ///
  /// > **Note:** `value` is required if the `header_action` is set to `Append` or `Overwrite`.
  final String? value;

  /// Creates a new [FrontdoorRuleActionsRequestHeaderAction].
  /// [headerAction] The action to be taken on the specified `header_name`. Possible values include `Append`, `Overwrite` or `Delete`.
  /// [headerName] The name of the header to modify.
  /// [value] The value to append or overwrite.
  FrontdoorRuleActionsRequestHeaderAction({
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
      headerAction: map['headerAction'] as String,
      headerName: map['headerName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

