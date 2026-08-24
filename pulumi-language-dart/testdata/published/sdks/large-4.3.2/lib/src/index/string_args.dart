// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_string_args_doc}
/// The set of arguments for String.
/// {@endtemplate}
/// {@macro pulumi_index_string_args_doc}
class StringArgs {
  final pulumi.Input<String> value;

  /// Creates a new [StringArgs].
  /// [value] Required.
  const StringArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory StringArgs.fromMap(Map<String, dynamic> map) {
    return StringArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
