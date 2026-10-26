// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceDynamicForwardingForwardProxy {
  /// A boolean flag enabling dynamic forwarding proxy.
  final pulumi.Input<bool> enabled;
  /// Determines the dynamic forwarding proxy mode Possible values: ["DIRECT_FORWARDING", "CLOUD_RUN"]
  final pulumi.Input<String> proxyMode;

  /// Creates a new [GetBackendServiceDynamicForwardingForwardProxy].
  /// [enabled] A boolean flag enabling dynamic forwarding proxy.
  /// [proxyMode] Determines the dynamic forwarding proxy mode Possible values: ["DIRECT_FORWARDING", "CLOUD_RUN"]
  const GetBackendServiceDynamicForwardingForwardProxy({
    required this.enabled,
    required this.proxyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'proxyMode': proxyMode,
    };
  }

  factory GetBackendServiceDynamicForwardingForwardProxy.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceDynamicForwardingForwardProxy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      proxyMode: pulumi.Input.fromValue(map['proxyMode'] as String),
    );
  }
}
