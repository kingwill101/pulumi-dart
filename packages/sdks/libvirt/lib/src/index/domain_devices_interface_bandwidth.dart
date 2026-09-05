// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_bandwidth_inbound.dart';
import 'domain_devices_interface_bandwidth_outbound.dart';

class DomainDevicesInterfaceBandwidth {
  /// Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  final pulumi.Input<DomainDevicesInterfaceBandwidthInbound?>? inbound;
  /// Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  final pulumi.Input<DomainDevicesInterfaceBandwidthOutbound?>? outbound;

  /// Creates a new [DomainDevicesInterfaceBandwidth].
  /// [inbound] Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  /// [outbound] Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  const DomainDevicesInterfaceBandwidth({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceBandwidthInbound, Map<String, dynamic>>(inbound, (value) => value.toMap()),
      'outbound': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceBandwidthOutbound, Map<String, dynamic>>(outbound, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceBandwidth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceBandwidth(
      inbound: (() { final guardedValue = map['inbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceBandwidthInbound.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outbound: (() { final guardedValue = map['outbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceBandwidthOutbound.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
