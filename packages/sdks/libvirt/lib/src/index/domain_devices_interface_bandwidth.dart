// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_bandwidth_inbound.dart';
import 'domain_devices_interface_bandwidth_outbound.dart';

class DomainDevicesInterfaceBandwidth {
  /// Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  final DomainDevicesInterfaceBandwidthInbound? inbound;
  /// Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  final DomainDevicesInterfaceBandwidthOutbound? outbound;

  /// Creates a new [DomainDevicesInterfaceBandwidth].
  /// [inbound] Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  /// [outbound] Defines outbound bandwidth settings for the interface, managing traffic shaping and quality of service for outgoing traffic.
  DomainDevicesInterfaceBandwidth({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?inbound == null ? null : inbound!.toMap(),
      'outbound': ?outbound == null ? null : outbound!.toMap(),
    };
  }

  factory DomainDevicesInterfaceBandwidth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceBandwidth(
      inbound: map['inbound'] == null ? null : DomainDevicesInterfaceBandwidthInbound.fromMap((map['inbound'] as Map).cast<String, dynamic>()),
      outbound: map['outbound'] == null ? null : DomainDevicesInterfaceBandwidthOutbound.fromMap((map['outbound'] as Map).cast<String, dynamic>()),
    );
  }
}

