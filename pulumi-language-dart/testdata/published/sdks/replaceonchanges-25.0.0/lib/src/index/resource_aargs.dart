// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_aargs_doc}
/// The set of arguments for ResourceA.
/// {@endtemplate}
/// {@macro pulumi_index_resource_aargs_doc}
class ResourceAArgs {
  final pulumi.Input<bool?>? replaceProp;
  final pulumi.Input<bool> value;

  /// Creates a new [ResourceAArgs].
  /// [replaceProp] Optional.
  /// [value] Required.
  const ResourceAArgs({
    this.replaceProp,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replaceProp': ?replaceProp,
      'value': value,
    };
  }

  factory ResourceAArgs.fromMap(Map<String, dynamic> map) {
    return ResourceAArgs(
      replaceProp: (() { final guardedValue = map['replaceProp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
