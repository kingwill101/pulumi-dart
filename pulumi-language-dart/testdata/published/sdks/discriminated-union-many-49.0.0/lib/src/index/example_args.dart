// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_example_args_doc}
/// The set of arguments for Example.
/// {@endtemplate}
/// {@macro pulumi_index_example_args_doc}
class ExampleArgs {
  final pulumi.Input<dynamic>? unionOf;

  /// Creates a new [ExampleArgs].
  /// [unionOf] Optional.
  const ExampleArgs({
    this.unionOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unionOf': ?unionOf,
    };
  }

  factory ExampleArgs.fromMap(Map<String, dynamic> map) {
    return ExampleArgs(
      unionOf: (() { final guardedValue = map['unionOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
