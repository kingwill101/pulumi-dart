// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ObfuscationExpression resources.
class ObfuscationExpressionState {
  /// The account id associated with the obfuscation expression.
  final pulumi.Input<String>? accountId;
  /// Description of expression.
  final pulumi.Input<String>? description;
  /// Name of expression.
  final pulumi.Input<String>? name;
  /// Regex of expression. Must be wrapped in parentheses, e.g. (regex.*).
  final pulumi.Input<String>? regex;

  /// Creates a new [ObfuscationExpressionState].
  /// [accountId] The account id associated with the obfuscation expression.
  /// [description] Description of expression.
  /// [name] Name of expression.
  /// [regex] Regex of expression. Must be wrapped in parentheses, e.g. (regex.*).
  ObfuscationExpressionState({
    this.accountId,
    this.description,
    this.name,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'name': ?name,
      'regex': ?regex,
    };
  }

  factory ObfuscationExpressionState.fromMap(Map<String, dynamic> map) {
    return ObfuscationExpressionState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      regex: map['regex'] == null ? null : (map['regex']! as String).input(),
    );
  }
}

