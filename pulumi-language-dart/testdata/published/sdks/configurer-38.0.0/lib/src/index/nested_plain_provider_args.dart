// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configurer.dart';

/// {@template pulumi_index_nested_plain_provider_args_doc}
/// Arguments for nestedPlainProvider.
/// {@endtemplate}
/// {@macro pulumi_index_nested_plain_provider_args_doc}
class NestedPlainProviderArgs {
  final pulumi.Input<Configurer> self;

  /// Creates a new [NestedPlainProviderArgs].
  /// [self] Required.
  const NestedPlainProviderArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
    };
  }

  factory NestedPlainProviderArgs.fromMap(Map<String, dynamic> map) {
    return NestedPlainProviderArgs(
      self: pulumi.Input.fromValue(map['__self__'] as Configurer),
    );
  }
}
