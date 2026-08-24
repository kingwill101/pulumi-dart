// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_fun_args_doc}
/// Arguments for fun.
/// {@endtemplate}
/// {@macro pulumi_index_fun_args_doc}
class FunArgs {
  /// Will be used to set out.
  final pulumi.Input<bool> in_;

  /// Creates a new [FunArgs].
  /// [in_] Will be used to set out.
  const FunArgs({
    required this.in_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'in': in_,
    };
  }

  factory FunArgs.fromMap(Map<String, dynamic> map) {
    return FunArgs(
      in_: pulumi.Input.fromValue(map['in'] as bool),
    );
  }
}
