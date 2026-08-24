// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_values_args_doc}
/// Arguments for getValues.
/// {@endtemplate}
/// {@macro pulumi_index_get_values_args_doc}
class GetValuesArgs {
  final pulumi.Input<List<String>> names;

  /// Creates a new [GetValuesArgs].
  /// [names] Required.
  const GetValuesArgs({
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
    };
  }

  factory GetValuesArgs.fromMap(Map<String, dynamic> map) {
    return GetValuesArgs(
      names: pulumi.Input.fromValue((map['names'] as List).cast<String>()),
    );
  }
}
