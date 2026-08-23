// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nested_input.dart';

/// {@template pulumi_cool_module_some_resource_args_doc}
/// The set of arguments for SomeResource.
/// {@endtemplate}
/// {@macro pulumi_cool_module_some_resource_args_doc}
class SomeResourceArgs {
  final pulumi.Input<NestedInput> nested;
  final pulumi.Input<bool> theInput;

  /// Creates a new [SomeResourceArgs].
  /// [nested] Required.
  /// [theInput] Required.
  const SomeResourceArgs({
    required this.nested,
    required this.theInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nested': pulumi.Input.mapInputValue<NestedInput, Map<String, dynamic>>(nested, (value) => value.toMap()),
      'the_input': theInput,
    };
  }

  factory SomeResourceArgs.fromMap(Map<String, dynamic> map) {
    return SomeResourceArgs(
      nested: pulumi.Input.fromValue(NestedInput.fromMap((map['nested']! as Map).cast<String, dynamic>())),
      theInput: pulumi.Input.fromValue(map['the_input'] as bool),
    );
  }
}
