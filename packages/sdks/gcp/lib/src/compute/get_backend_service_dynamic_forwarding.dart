// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_dynamic_forwarding_forward_proxy.dart';
import 'get_backend_service_dynamic_forwarding_ip_port_selection.dart';

class GetBackendServiceDynamicForwarding {
  /// Dynamic Forwarding Proxy configuration.
  final pulumi.Input<List<GetBackendServiceDynamicForwardingForwardProxy>> forwardProxies;
  /// IP:PORT based dynamic forwarding configuration.
  final pulumi.Input<List<GetBackendServiceDynamicForwardingIpPortSelection>> ipPortSelections;

  /// Creates a new [GetBackendServiceDynamicForwarding].
  /// [forwardProxies] Dynamic Forwarding Proxy configuration.
  /// [ipPortSelections] IP:PORT based dynamic forwarding configuration.
  const GetBackendServiceDynamicForwarding({
    required this.forwardProxies,
    required this.ipPortSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardProxies': pulumi.Input.mapInputValue<List<GetBackendServiceDynamicForwardingForwardProxy>, List<Map<String, dynamic>>>(forwardProxies, (value) => pulumi.Input.encodeList<GetBackendServiceDynamicForwardingForwardProxy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipPortSelections': pulumi.Input.mapInputValue<List<GetBackendServiceDynamicForwardingIpPortSelection>, List<Map<String, dynamic>>>(ipPortSelections, (value) => pulumi.Input.encodeList<GetBackendServiceDynamicForwardingIpPortSelection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceDynamicForwarding(
      forwardProxies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackendServiceDynamicForwardingForwardProxy>(map['forwardProxies']!, (value) => GetBackendServiceDynamicForwardingForwardProxy.fromMap((value as Map).cast<String, dynamic>()))),
      ipPortSelections: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackendServiceDynamicForwardingIpPortSelection>(map['ipPortSelections']!, (value) => GetBackendServiceDynamicForwardingIpPortSelection.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
