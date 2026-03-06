// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom error rule.
class CustomErrorRule {
  /// Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
  final pulumi.Input<bool>? isErrorType;
  /// Selects messages to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String>? selector;

  /// Creates a new [CustomErrorRule].
  /// [isErrorType] Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
  /// [selector] Selects messages to which this rule applies. Refer to selector for syntax details.
  const CustomErrorRule({
    this.isErrorType,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isErrorType': ?isErrorType,
      'selector': ?selector,
    };
  }

  factory CustomErrorRule.fromMap(Map<String, dynamic> map) {
    return CustomErrorRule(
      isErrorType: (() { final guardedValue = map['isErrorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

