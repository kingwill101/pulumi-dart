// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cool_module_another_resource_args_doc}
/// The set of arguments for AnotherResource.
/// {@endtemplate}
/// {@macro pulumi_cool_module_another_resource_args_doc}
class AnotherResourceArgs {
  final pulumi.Input<String> theInput;

  /// Creates a new [AnotherResourceArgs].
  /// [theInput] Required.
  const AnotherResourceArgs({
    required this.theInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'the_input': theInput,
    };
  }

  factory AnotherResourceArgs.fromMap(Map<String, dynamic> map) {
    return AnotherResourceArgs(
      theInput: pulumi.Input.fromValue(map['the_input'] as String),
    );
  }
}
