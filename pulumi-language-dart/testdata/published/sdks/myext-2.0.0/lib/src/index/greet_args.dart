// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_greet_args_doc}
/// Arguments for greet.
/// {@endtemplate}
/// {@macro pulumi_index_greet_args_doc}
class GreetArgs {
  final pulumi.Input<String> name;

  /// Creates a new [GreetArgs].
  /// [name] Required.
  const GreetArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GreetArgs.fromMap(Map<String, dynamic> map) {
    return GreetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
