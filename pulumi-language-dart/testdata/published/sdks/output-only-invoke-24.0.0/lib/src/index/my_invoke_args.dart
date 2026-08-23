// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_my_invoke_args_doc}
/// Arguments for myInvoke.
/// {@endtemplate}
/// {@macro pulumi_index_my_invoke_args_doc}
class MyInvokeArgs {
  final pulumi.Input<String> value;

  /// Creates a new [MyInvokeArgs].
  /// [value] Required.
  const MyInvokeArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory MyInvokeArgs.fromMap(Map<String, dynamic> map) {
    return MyInvokeArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
