// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mod_nested_resource_resource_call_args_doc}
/// Arguments for Resource.call.
/// {@endtemplate}
/// {@macro pulumi_mod_nested_resource_resource_call_args_doc}
class ResourceCallArgs {
  final pulumi.Input<String> input;

  /// Creates a new [ResourceCallArgs].
  /// [input] Required.
  const ResourceCallArgs({
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input,
    };
  }

  factory ResourceCallArgs.fromMap(Map<String, dynamic> map) {
    return ResourceCallArgs(
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
