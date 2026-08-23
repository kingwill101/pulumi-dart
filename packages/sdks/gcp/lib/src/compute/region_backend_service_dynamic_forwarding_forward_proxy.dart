// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceDynamicForwardingForwardProxy {
  /// (Required, Beta)
  /// A boolean flag enabling dynamic forwarding proxy.
  final pulumi.Input<bool> enabled;
  /// (Required, Beta)
  /// Determines the dynamic forwarding proxy mode
  /// Possible values are: `DIRECT_FORWARDING`, `CLOUD_RUN`.
  final pulumi.Input<String> proxyMode;

  /// Creates a new [RegionBackendServiceDynamicForwardingForwardProxy].
  /// [enabled] (Required, Beta)
  /// [proxyMode] (Required, Beta)
  const RegionBackendServiceDynamicForwardingForwardProxy({
    required this.enabled,
    required this.proxyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'proxyMode': proxyMode,
    };
  }

  factory RegionBackendServiceDynamicForwardingForwardProxy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceDynamicForwardingForwardProxy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      proxyMode: pulumi.Input.fromValue(map['proxyMode'] as String),
    );
  }
}
