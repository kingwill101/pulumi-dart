// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_dynamic_forwarding_ip_port_selection.dart';

class BackendServiceDynamicForwarding {
  /// (Optional, Beta)
  /// IP:PORT based dynamic forwarding configuration.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceDynamicForwardingIpPortSelection>? ipPortSelection;

  /// Creates a new [BackendServiceDynamicForwarding].
  /// [ipPortSelection] (Optional, Beta)
  const BackendServiceDynamicForwarding({
    this.ipPortSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPortSelection': ?pulumi.Input.mapOptionalInputValue<BackendServiceDynamicForwardingIpPortSelection, Map<String, dynamic>>(ipPortSelection, (value) => value.toMap()),
    };
  }

  factory BackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return BackendServiceDynamicForwarding(
      ipPortSelection: (() { final guardedValue = map['ipPortSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceDynamicForwardingIpPortSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
