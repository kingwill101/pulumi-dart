// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_custom_args_doc}
/// The set of arguments for Custom.
/// {@endtemplate}
/// {@macro pulumi_index_custom_args_doc}
class CustomArgs {
  final pulumi.Input<String> value;

  /// Creates a new [CustomArgs].
  /// [value] Required.
  const CustomArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory CustomArgs.fromMap(Map<String, dynamic> map) {
    return CustomArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
