// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_callable.dart';

/// {@template pulumi_index_prefixed_args_doc}
/// Arguments for prefixed.
/// {@endtemplate}
/// {@macro pulumi_index_prefixed_args_doc}
class PrefixedArgs {
  final pulumi.Input<ComponentCallable> self;
  final pulumi.Input<String> prefix;

  /// Creates a new [PrefixedArgs].
  /// [self] Required.
  /// [prefix] Required.
  const PrefixedArgs({
    required this.self,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
      'prefix': prefix,
    };
  }

  factory PrefixedArgs.fromMap(Map<String, dynamic> map) {
    return PrefixedArgs(
      self: pulumi.Input.fromValue(map['__self__'] as ComponentCallable),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
