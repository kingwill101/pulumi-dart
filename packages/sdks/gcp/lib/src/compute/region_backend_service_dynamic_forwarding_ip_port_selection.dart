// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [RegionBackendServiceDynamicForwardingIpPortSelection].
  /// [enabled] A boolean flag enabling IP:PORT based dynamic forwarding.
  RegionBackendServiceDynamicForwardingIpPortSelection({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory RegionBackendServiceDynamicForwardingIpPortSelection.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceDynamicForwardingIpPortSelection(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

