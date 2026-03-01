// ignore_for_file: unused_element, unnecessary_cast


/// A custom error rule.
class CustomErrorRule {
  /// Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
  final bool? isErrorType;
  /// Selects messages to which this rule applies. Refer to selector for syntax details.
  final String? selector;

  /// Creates a new [CustomErrorRule].
  /// [isErrorType] Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
  /// [selector] Selects messages to which this rule applies. Refer to selector for syntax details.
  CustomErrorRule({
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
      isErrorType: map['isErrorType'] == null ? null : map['isErrorType'] as bool,
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}

