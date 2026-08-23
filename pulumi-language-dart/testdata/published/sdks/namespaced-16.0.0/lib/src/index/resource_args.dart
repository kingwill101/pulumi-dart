// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<pulumi.CustomResource?>? resourceRef;
  final pulumi.Input<bool> value;

  /// Creates a new [ResourceArgs].
  /// [resourceRef] Optional.
  /// [value] Required.
  const ResourceArgs({
    this.resourceRef,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceRef': ?resourceRef,
      'value': value,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      resourceRef: (() { final guardedValue = map['resourceRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi.CustomResource); })(),
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
