// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_dynamic_forwarding_forward_proxy.dart';
import 'region_backend_service_dynamic_forwarding_ip_port_selection.dart';

class RegionBackendServiceDynamicForwarding {
  /// (Optional, Beta)
  /// Dynamic Forwarding Proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceDynamicForwardingForwardProxy>? forwardProxy;
  /// (Optional, Beta)
  /// IP:PORT based dynamic forwarding configuration.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceDynamicForwardingIpPortSelection>? ipPortSelection;

  /// Creates a new [RegionBackendServiceDynamicForwarding].
  /// [forwardProxy] (Optional, Beta)
  /// [ipPortSelection] (Optional, Beta)
  const RegionBackendServiceDynamicForwarding({
    this.forwardProxy,
    this.ipPortSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardProxy': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceDynamicForwardingForwardProxy, Map<String, dynamic>>(forwardProxy, (value) => value.toMap()),
      'ipPortSelection': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceDynamicForwardingIpPortSelection, Map<String, dynamic>>(ipPortSelection, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceDynamicForwarding(
      forwardProxy: (() { final guardedValue = map['forwardProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionBackendServiceDynamicForwardingForwardProxy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipPortSelection: (() { final guardedValue = map['ipPortSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionBackendServiceDynamicForwardingIpPortSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
