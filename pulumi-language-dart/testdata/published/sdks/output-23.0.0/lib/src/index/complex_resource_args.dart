// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_complex_resource_args_doc}
/// The set of arguments for ComplexResource.
/// {@endtemplate}
/// {@macro pulumi_index_complex_resource_args_doc}
class ComplexResourceArgs {
  final pulumi.Input<double> value;

  /// Creates a new [ComplexResourceArgs].
  /// [value] Required.
  const ComplexResourceArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ComplexResourceArgs.fromMap(Map<String, dynamic> map) {
    return ComplexResourceArgs(
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}
