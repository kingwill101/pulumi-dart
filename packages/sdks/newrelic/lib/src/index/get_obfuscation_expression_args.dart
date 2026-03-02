// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_obfuscation_expression_get_obfuscation_expression_args_doc}
/// Arguments for getObfuscationExpression.
/// {@endtemplate}
/// {@macro pulumi_index_get_obfuscation_expression_get_obfuscation_expression_args_doc}
class GetObfuscationExpressionArgs {
  /// The account id associated with the obfuscation expression. If left empty will default to account ID specified in provider level configuration.
  final pulumi.Input<String>? accountId;
  /// Name of expression.
  final pulumi.Input<String> name;

  /// Creates a new [GetObfuscationExpressionArgs].
  /// [accountId] The account id associated with the obfuscation expression. If left empty will default to account ID specified in provider level configuration.
  /// [name] Name of expression.
  GetObfuscationExpressionArgs({
    this.accountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': name,
    };
  }

  factory GetObfuscationExpressionArgs.fromMap(Map<String, dynamic> map) {
    return GetObfuscationExpressionArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

