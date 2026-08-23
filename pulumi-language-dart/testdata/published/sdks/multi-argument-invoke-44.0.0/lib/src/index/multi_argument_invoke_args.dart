// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_multi_argument_invoke_args_doc}
/// Arguments for multiArgumentInvoke.
/// {@endtemplate}
/// {@macro pulumi_index_multi_argument_invoke_args_doc}
class MultiArgumentInvokeArgs {
  final pulumi.Input<String> first;
  final pulumi.Input<String?>? second;

  /// Creates a new [MultiArgumentInvokeArgs].
  /// [first] Required.
  /// [second] Optional.
  const MultiArgumentInvokeArgs({
    required this.first,
    this.second,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': first,
      'second': ?second,
    };
  }

  factory MultiArgumentInvokeArgs.fromMap(Map<String, dynamic> map) {
    return MultiArgumentInvokeArgs(
      first: pulumi.Input.fromValue(map['first'] as String),
      second: (() { final guardedValue = map['second']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
