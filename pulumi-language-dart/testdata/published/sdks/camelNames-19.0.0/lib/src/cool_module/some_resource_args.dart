// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cool_module_some_resource_args_doc}
/// The set of arguments for SomeResource.
/// {@endtemplate}
/// {@macro pulumi_cool_module_some_resource_args_doc}
class SomeResourceArgs {
  final pulumi.Input<String?>? resourceName;
  final pulumi.Input<bool> theInput;

  /// Creates a new [SomeResourceArgs].
  /// [resourceName] Optional.
  /// [theInput] Required.
  const SomeResourceArgs({
    this.resourceName,
    required this.theInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
      'theInput': theInput,
    };
  }

  factory SomeResourceArgs.fromMap(Map<String, dynamic> map) {
    return SomeResourceArgs(
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      theInput: pulumi.Input.fromValue(map['theInput'] as bool),
    );
  }
}
