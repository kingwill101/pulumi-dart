// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceDynamicForwardingIpPortSelection {
  /// (Optional, Beta)
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [RegionBackendServiceDynamicForwardingIpPortSelection].
  /// [enabled] (Optional, Beta)
  const RegionBackendServiceDynamicForwardingIpPortSelection({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory RegionBackendServiceDynamicForwardingIpPortSelection.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceDynamicForwardingIpPortSelection(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
