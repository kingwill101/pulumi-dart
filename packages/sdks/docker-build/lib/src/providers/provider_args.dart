// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/registry.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The build daemon's address.
  final pulumi.Input<String>? host;
  final pulumi.Input<List<Registry>>? registries;

  /// Creates a new [ProviderArgs].
  /// [host] The build daemon's address.
  /// [registries] Optional.
  ProviderArgs({
    pulumi.Output<String>? host,
    pulumi.Output<List<Registry>>? registries,
  }) :
      host = pulumi.Input.asOptionalInput<String>(host),
      registries = pulumi.Input.asOptionalInput<List<Registry>>(registries);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'registries': ?pulumi.Input.mapOptionalInputValue<List<Registry>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<Registry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      registries: map['registries'] == null ? null : pulumi.Output.create<List<Registry>>(pulumi.Input.decodeList<Registry>(map['registries'], (value) => Registry.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

