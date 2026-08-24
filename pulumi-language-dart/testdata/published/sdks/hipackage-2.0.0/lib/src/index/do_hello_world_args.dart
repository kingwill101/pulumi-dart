// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_do_hello_world_args_doc}
/// Arguments for doHelloWorld.
/// {@endtemplate}
/// {@macro pulumi_index_do_hello_world_args_doc}
class DoHelloWorldArgs {
  final pulumi.Input<String> input;

  /// Creates a new [DoHelloWorldArgs].
  /// [input] Required.
  const DoHelloWorldArgs({
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input,
    };
  }

  factory DoHelloWorldArgs.fromMap(Map<String, dynamic> map) {
    return DoHelloWorldArgs(
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
