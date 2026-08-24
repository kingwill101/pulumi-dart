// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_component_foreign_child_args_doc}
/// The set of arguments for ComponentForeignChild.
/// {@endtemplate}
/// {@macro pulumi_index_component_foreign_child_args_doc}
class ComponentForeignChildArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ComponentForeignChildArgs].
  /// [value] Required.
  const ComponentForeignChildArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ComponentForeignChildArgs.fromMap(Map<String, dynamic> map) {
    return ComponentForeignChildArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
