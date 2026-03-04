// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom error rule.
class CustomErrorRuleResponse {
  /// Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
  final pulumi.Input<bool> isErrorType;

  /// Selects messages to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String> selector;

  /// Creates a new [CustomErrorRuleResponse].
  /// [isErrorType] Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
  /// [selector] Selects messages to which this rule applies. Refer to selector for syntax details.
  CustomErrorRuleResponse({required this.isErrorType, required this.selector});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isErrorType': isErrorType, 'selector': selector};
  }

  factory CustomErrorRuleResponse.fromMap(Map<String, dynamic> map) {
    return CustomErrorRuleResponse(
      isErrorType: pulumi.Input.fromValue(map['isErrorType'] as bool),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}
