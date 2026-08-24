// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_component_callable_prefixed_args_doc}
/// Arguments for ComponentCallable.prefixed.
/// {@endtemplate}
/// {@macro pulumi_index_component_callable_prefixed_args_doc}
class ComponentCallablePrefixedArgs {
  final pulumi.Input<String> prefix;

  /// Creates a new [ComponentCallablePrefixedArgs].
  /// [prefix] Required.
  const ComponentCallablePrefixedArgs({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory ComponentCallablePrefixedArgs.fromMap(Map<String, dynamic> map) {
    return ComponentCallablePrefixedArgs(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
