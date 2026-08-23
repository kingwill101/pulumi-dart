// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_module_lambda_args_doc}
/// The set of arguments for Lambda.
/// {@endtemplate}
/// {@macro pulumi_module_lambda_args_doc}
class LambdaArgs {
  final pulumi.Input<String> builtins;
  final pulumi.Input<String> lambda;
  final pulumi.Input<String> property;

  /// Creates a new [LambdaArgs].
  /// [builtins] Required.
  /// [lambda] Required.
  /// [property] Required.
  const LambdaArgs({
    required this.builtins,
    required this.lambda,
    required this.property,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtins': builtins,
      'lambda': lambda,
      'property': property,
    };
  }

  factory LambdaArgs.fromMap(Map<String, dynamic> map) {
    return LambdaArgs(
      builtins: pulumi.Input.fromValue(map['builtins'] as String),
      lambda: pulumi.Input.fromValue(map['lambda'] as String),
      property: pulumi.Input.fromValue(map['property'] as String),
    );
  }
}
