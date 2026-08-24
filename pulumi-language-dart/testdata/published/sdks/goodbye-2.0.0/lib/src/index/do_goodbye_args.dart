// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_do_goodbye_args_doc}
/// Arguments for doGoodbye.
/// {@endtemplate}
/// {@macro pulumi_index_do_goodbye_args_doc}
class DoGoodbyeArgs {
  final pulumi.Input<String> input;

  /// Creates a new [DoGoodbyeArgs].
  /// [input] Required.
  const DoGoodbyeArgs({
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input,
    };
  }

  factory DoGoodbyeArgs.fromMap(Map<String, dynamic> map) {
    return DoGoodbyeArgs(
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
