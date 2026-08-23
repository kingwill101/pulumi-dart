// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_dynamic_forwarding_forward_proxy.dart';
import 'get_region_backend_service_dynamic_forwarding_ip_port_selection.dart';

class GetRegionBackendServiceDynamicForwarding {
  /// Dynamic Forwarding Proxy configuration.
  final pulumi.Input<List<GetRegionBackendServiceDynamicForwardingForwardProxy>> forwardProxies;
  /// IP:PORT based dynamic forwarding configuration.
  final pulumi.Input<List<GetRegionBackendServiceDynamicForwardingIpPortSelection>> ipPortSelections;

  /// Creates a new [GetRegionBackendServiceDynamicForwarding].
  /// [forwardProxies] Dynamic Forwarding Proxy configuration.
  /// [ipPortSelections] IP:PORT based dynamic forwarding configuration.
  const GetRegionBackendServiceDynamicForwarding({
    required this.forwardProxies,
    required this.ipPortSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardProxies': pulumi.Input.mapInputValue<List<GetRegionBackendServiceDynamicForwardingForwardProxy>, List<Map<String, dynamic>>>(forwardProxies, (value) => pulumi.Input.encodeList<GetRegionBackendServiceDynamicForwardingForwardProxy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipPortSelections': pulumi.Input.mapInputValue<List<GetRegionBackendServiceDynamicForwardingIpPortSelection>, List<Map<String, dynamic>>>(ipPortSelections, (value) => pulumi.Input.encodeList<GetRegionBackendServiceDynamicForwardingIpPortSelection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionBackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceDynamicForwarding(
      forwardProxies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceDynamicForwardingForwardProxy>(map['forwardProxies']!, (value) => GetRegionBackendServiceDynamicForwardingForwardProxy.fromMap((value as Map).cast<String, dynamic>()))),
      ipPortSelections: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceDynamicForwardingIpPortSelection>(map['ipPortSelections']!, (value) => GetRegionBackendServiceDynamicForwardingIpPortSelection.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
