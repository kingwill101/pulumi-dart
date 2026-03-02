// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetRegionBackendServiceDynamicForwardingIpPortSelection].
  /// [enabled] A boolean flag enabling IP:PORT based dynamic forwarding.
  GetRegionBackendServiceDynamicForwardingIpPortSelection({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetRegionBackendServiceDynamicForwardingIpPortSelection.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceDynamicForwardingIpPortSelection(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

