// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_dynamic_forwarding_ip_port_selection.dart';

class RegionBackendServiceDynamicForwarding {
  /// IP:PORT based dynamic forwarding configuration.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceDynamicForwardingIpPortSelection>? ipPortSelection;

  /// Creates a new [RegionBackendServiceDynamicForwarding].
  /// [ipPortSelection] IP:PORT based dynamic forwarding configuration.
  RegionBackendServiceDynamicForwarding({
    this.ipPortSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPortSelection': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceDynamicForwardingIpPortSelection, Map<String, dynamic>>(ipPortSelection, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceDynamicForwarding(
      ipPortSelection: map['ipPortSelection'] == null ? null : (RegionBackendServiceDynamicForwardingIpPortSelection.fromMap((map['ipPortSelection']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

