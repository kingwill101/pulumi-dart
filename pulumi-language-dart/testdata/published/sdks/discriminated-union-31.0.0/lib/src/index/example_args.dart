// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_example_args_doc}
/// The set of arguments for Example.
/// {@endtemplate}
/// {@macro pulumi_index_example_args_doc}
class ExampleArgs {
  final pulumi.Input<List<dynamic>?>? arrayOfUnionOf;
  final pulumi.Input<dynamic>? unionOf;

  /// Creates a new [ExampleArgs].
  /// [arrayOfUnionOf] Optional.
  /// [unionOf] Optional.
  const ExampleArgs({
    this.arrayOfUnionOf,
    this.unionOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayOfUnionOf': ?arrayOfUnionOf,
      'unionOf': ?unionOf,
    };
  }

  factory ExampleArgs.fromMap(Map<String, dynamic> map) {
    return ExampleArgs(
      arrayOfUnionOf: (() { final guardedValue = map['arrayOfUnionOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      unionOf: (() { final guardedValue = map['unionOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
