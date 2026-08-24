// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry.dart';

/// {@template pulumi_cool_module_some_data_args_doc}
/// Arguments for someData.
/// {@endtemplate}
/// {@macro pulumi_cool_module_some_data_args_doc}
class SomeDataArgs {
  final pulumi.Input<List<Entry>> nested;
  final pulumi.Input<String> theInput;

  /// Creates a new [SomeDataArgs].
  /// [nested] Required.
  /// [theInput] Required.
  const SomeDataArgs({
    required this.nested,
    required this.theInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nested': pulumi.Input.mapInputValue<List<Entry>, List<Map<String, dynamic>>>(nested, (value) => pulumi.Input.encodeList<Entry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'the_input': theInput,
    };
  }

  factory SomeDataArgs.fromMap(Map<String, dynamic> map) {
    return SomeDataArgs(
      nested: pulumi.Input.fromValue(pulumi.Input.decodeList<Entry>(map['nested']!, (value) => Entry.fromMap((value as Map).cast<String, dynamic>()))),
      theInput: pulumi.Input.fromValue(map['the_input'] as String),
    );
  }
}
