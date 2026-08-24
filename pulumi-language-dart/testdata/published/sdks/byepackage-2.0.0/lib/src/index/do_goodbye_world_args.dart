// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_do_goodbye_world_args_doc}
/// Arguments for doGoodbyeWorld.
/// {@endtemplate}
/// {@macro pulumi_index_do_goodbye_world_args_doc}
class DoGoodbyeWorldArgs {
  final pulumi.Input<String> input;

  /// Creates a new [DoGoodbyeWorldArgs].
  /// [input] Required.
  const DoGoodbyeWorldArgs({
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input,
    };
  }

  factory DoGoodbyeWorldArgs.fromMap(Map<String, dynamic> map) {
    return DoGoodbyeWorldArgs(
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
