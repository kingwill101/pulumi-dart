// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_enum_output_args_doc}
/// The set of arguments for EnumOutput.
/// {@endtemplate}
/// {@macro pulumi_index_enum_output_args_doc}
class EnumOutputArgs {
  final pulumi.Input<String> name;

  /// Creates a new [EnumOutputArgs].
  /// [name] Required.
  const EnumOutputArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory EnumOutputArgs.fromMap(Map<String, dynamic> map) {
    return EnumOutputArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
