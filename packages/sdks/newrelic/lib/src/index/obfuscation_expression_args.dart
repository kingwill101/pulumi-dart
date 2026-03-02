// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_obfuscation_expression_obfuscation_expression_args_doc}
/// The set of arguments for ObfuscationExpression.
/// {@endtemplate}
/// {@macro pulumi_index_obfuscation_expression_obfuscation_expression_args_doc}
class ObfuscationExpressionArgs {
  /// The account id associated with the obfuscation expression.
  final pulumi.Input<String>? accountId;
  /// Description of expression.
  final pulumi.Input<String>? description;
  /// Name of expression.
  final pulumi.Input<String>? name;
  /// Regex of expression. Must be wrapped in parentheses, e.g. (regex.*).
  final pulumi.Input<String> regex;

  /// Creates a new [ObfuscationExpressionArgs].
  /// [accountId] The account id associated with the obfuscation expression.
  /// [description] Description of expression.
  /// [name] Name of expression.
  /// [regex] Regex of expression. Must be wrapped in parentheses, e.g. (regex.*).
  ObfuscationExpressionArgs({
    this.accountId,
    this.description,
    this.name,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'name': ?name,
      'regex': regex,
    };
  }

  factory ObfuscationExpressionArgs.fromMap(Map<String, dynamic> map) {
    return ObfuscationExpressionArgs(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      regex: (map['regex'] as String).input(),
    );
  }
}

