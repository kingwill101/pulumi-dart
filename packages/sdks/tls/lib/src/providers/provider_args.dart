// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_proxy.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Proxy used by resources and data sources that connect to external endpoints.
  final pulumi.Input<ProviderProxy>? proxy;

  /// Creates a new [ProviderArgs].
  /// [proxy] Proxy used by resources and data sources that connect to external endpoints.
  ProviderArgs({
    pulumi.Output<ProviderProxy>? proxy,
  }) :
      proxy = pulumi.Input.asOptionalInput<ProviderProxy>(proxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxy': ?pulumi.Input.mapOptionalInputValue<ProviderProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      proxy: map['proxy'] == null ? null : pulumi.Output.create<ProviderProxy>(ProviderProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
    );
  }
}

