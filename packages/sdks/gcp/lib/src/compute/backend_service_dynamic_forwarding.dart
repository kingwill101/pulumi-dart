// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_dynamic_forwarding_ip_port_selection.dart';

class BackendServiceDynamicForwarding {
  /// IP:PORT based dynamic forwarding configuration.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceDynamicForwardingIpPortSelection>? ipPortSelection;

  /// Creates a new [BackendServiceDynamicForwarding].
  /// [ipPortSelection] IP:PORT based dynamic forwarding configuration.
  BackendServiceDynamicForwarding({
    this.ipPortSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPortSelection': ?pulumi.Input.mapOptionalInputValue<BackendServiceDynamicForwardingIpPortSelection, Map<String, dynamic>>(ipPortSelection, (value) => value.toMap()),
    };
  }

  factory BackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return BackendServiceDynamicForwarding(
      ipPortSelection: map['ipPortSelection'] == null ? null : (BackendServiceDynamicForwardingIpPortSelection.fromMap((map['ipPortSelection'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

