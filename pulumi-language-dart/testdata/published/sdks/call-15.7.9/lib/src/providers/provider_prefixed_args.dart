// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_prefixed_args_doc}
/// Arguments for Provider.prefixed.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_prefixed_args_doc}
class ProviderPrefixedArgs {
  final pulumi.Input<String> prefix;

  /// Creates a new [ProviderPrefixedArgs].
  /// [prefix] Required.
  const ProviderPrefixedArgs({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory ProviderPrefixedArgs.fromMap(Map<String, dynamic> map) {
    return ProviderPrefixedArgs(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
