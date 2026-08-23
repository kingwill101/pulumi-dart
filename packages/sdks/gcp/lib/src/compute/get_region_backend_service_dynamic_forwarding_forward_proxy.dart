// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceDynamicForwardingForwardProxy {
  /// A boolean flag enabling dynamic forwarding proxy.
  final pulumi.Input<bool> enabled;
  /// Determines the dynamic forwarding proxy mode Possible values: ["DIRECT_FORWARDING", "CLOUD_RUN"]
  final pulumi.Input<String> proxyMode;

  /// Creates a new [GetRegionBackendServiceDynamicForwardingForwardProxy].
  /// [enabled] A boolean flag enabling dynamic forwarding proxy.
  /// [proxyMode] Determines the dynamic forwarding proxy mode Possible values: ["DIRECT_FORWARDING", "CLOUD_RUN"]
  const GetRegionBackendServiceDynamicForwardingForwardProxy({
    required this.enabled,
    required this.proxyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'proxyMode': proxyMode,
    };
  }

  factory GetRegionBackendServiceDynamicForwardingForwardProxy.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceDynamicForwardingForwardProxy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      proxyMode: pulumi.Input.fromValue(map['proxyMode'] as String),
    );
  }
}
