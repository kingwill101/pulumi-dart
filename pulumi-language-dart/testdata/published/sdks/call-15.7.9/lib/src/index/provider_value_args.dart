// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom.dart';

/// {@template pulumi_index_provider_value_args_doc}
/// Arguments for providerValue.
/// {@endtemplate}
/// {@macro pulumi_index_provider_value_args_doc}
class ProviderValueArgs {
  final pulumi.Input<Custom> self;

  /// Creates a new [ProviderValueArgs].
  /// [self] Required.
  const ProviderValueArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
    };
  }

  factory ProviderValueArgs.fromMap(Map<String, dynamic> map) {
    return ProviderValueArgs(
      self: pulumi.Input.fromValue(map['__self__'] as Custom),
    );
  }
}
