// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_dynamic_forwarding_forward_proxy.dart';
import 'backend_service_dynamic_forwarding_ip_port_selection.dart';

class BackendServiceDynamicForwarding {
  /// (Optional, Beta)
  /// Dynamic Forwarding Proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceDynamicForwardingForwardProxy?>? forwardProxy;
  /// (Optional, Beta)
  /// IP:PORT based dynamic forwarding configuration.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceDynamicForwardingIpPortSelection?>? ipPortSelection;

  /// Creates a new [BackendServiceDynamicForwarding].
  /// [forwardProxy] (Optional, Beta)
  /// [ipPortSelection] (Optional, Beta)
  const BackendServiceDynamicForwarding({
    this.forwardProxy,
    this.ipPortSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardProxy': ?pulumi.Input.mapOptionalInputValue<BackendServiceDynamicForwardingForwardProxy, Map<String, dynamic>>(forwardProxy, (value) => value.toMap()),
      'ipPortSelection': ?pulumi.Input.mapOptionalInputValue<BackendServiceDynamicForwardingIpPortSelection, Map<String, dynamic>>(ipPortSelection, (value) => value.toMap()),
    };
  }

  factory BackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return BackendServiceDynamicForwarding(
      forwardProxy: (() { final guardedValue = map['forwardProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceDynamicForwardingForwardProxy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipPortSelection: (() { final guardedValue = map['ipPortSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceDynamicForwardingIpPortSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
