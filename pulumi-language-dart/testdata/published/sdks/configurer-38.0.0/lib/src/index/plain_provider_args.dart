// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configurer.dart';

/// {@template pulumi_index_plain_provider_args_doc}
/// Arguments for plainProvider.
/// {@endtemplate}
/// {@macro pulumi_index_plain_provider_args_doc}
class PlainProviderArgs {
  final pulumi.Input<Configurer> self;

  /// Creates a new [PlainProviderArgs].
  /// [self] Required.
  const PlainProviderArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
    };
  }

  factory PlainProviderArgs.fromMap(Map<String, dynamic> map) {
    return PlainProviderArgs(
      self: pulumi.Input.fromValue(map['__self__'] as Configurer),
    );
  }
}
