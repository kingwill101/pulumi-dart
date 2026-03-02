// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleActionsResponseHeaderAction {
  /// The action to be taken on the specified `header_name`. Possible values include `Append`, `Overwrite` or `Delete`.
  ///
  /// > **Note:** `Append` causes the specified header to be added to the request with the specified value. If the header is already present, the value is appended to the existing header value using string concatenation. No delimiters are added. `Overwrite` causes specified header to be added to the request with the specified value. If the header is already present, the specified value overwrites the existing value. `Delete` causes the header to be deleted from the request.
  final pulumi.Input<String> headerAction;
  /// The name of the header to modify.
  final pulumi.Input<String> headerName;
  /// The value to append or overwrite.
  ///
  /// > **Note:** `value` is required if the `header_action` is set to `Append` or `Overwrite`.
  final pulumi.Input<String>? value;

  /// Creates a new [FrontdoorRuleActionsResponseHeaderAction].
  /// [headerAction] The action to be taken on the specified `header_name`. Possible values include `Append`, `Overwrite` or `Delete`.
  /// [headerName] The name of the header to modify.
  /// [value] The value to append or overwrite.
  FrontdoorRuleActionsResponseHeaderAction({
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

  factory FrontdoorRuleActionsResponseHeaderAction.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleActionsResponseHeaderAction(
      headerAction: (map['headerAction'] as String).input(),
      headerName: (map['headerName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

