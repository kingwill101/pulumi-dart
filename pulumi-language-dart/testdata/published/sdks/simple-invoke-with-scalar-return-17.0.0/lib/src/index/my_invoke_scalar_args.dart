// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_my_invoke_scalar_args_doc}
/// Arguments for myInvokeScalar.
/// {@endtemplate}
/// {@macro pulumi_index_my_invoke_scalar_args_doc}
class MyInvokeScalarArgs {
  final pulumi.Input<String> value;

  /// Creates a new [MyInvokeScalarArgs].
  /// [value] Required.
  const MyInvokeScalarArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory MyInvokeScalarArgs.fromMap(Map<String, dynamic> map) {
    return MyInvokeScalarArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
