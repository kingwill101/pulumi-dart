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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> regex,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      regex = pulumi.Input.asInput<String>(regex);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regex: pulumi.Output.create<String>(map['regex'] as String),
    );
  }
}

