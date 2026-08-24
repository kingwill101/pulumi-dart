// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_component_callable_args_doc}
/// The set of arguments for ComponentCallable.
/// {@endtemplate}
/// {@macro pulumi_index_component_callable_args_doc}
class ComponentCallableArgs {
  final pulumi.Input<String> value;

  /// Creates a new [ComponentCallableArgs].
  /// [value] Required.
  const ComponentCallableArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ComponentCallableArgs.fromMap(Map<String, dynamic> map) {
    return ComponentCallableArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
