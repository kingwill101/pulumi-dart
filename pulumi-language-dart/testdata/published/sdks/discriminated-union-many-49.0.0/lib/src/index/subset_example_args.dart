// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_subset_example_args_doc}
/// The set of arguments for SubsetExample.
/// {@endtemplate}
/// {@macro pulumi_index_subset_example_args_doc}
class SubsetExampleArgs {
  final pulumi.Input<dynamic>? unionOf;

  /// Creates a new [SubsetExampleArgs].
  /// [unionOf] Optional.
  const SubsetExampleArgs({
    this.unionOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unionOf': ?unionOf,
    };
  }

  factory SubsetExampleArgs.fromMap(Map<String, dynamic> map) {
    return SubsetExampleArgs(
      unionOf: (() { final guardedValue = map['unionOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
