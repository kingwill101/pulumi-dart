// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  final pulumi.Input<String> config;

  /// Creates a new [ProviderArgs].
  /// [config] Required.
  const ProviderArgs({
    required this.config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      config: pulumi.Input.fromValue(map['config'] as String),
    );
  }
}
