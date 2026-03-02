// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_ethernet_ip.dart';
import 'domain_devices_interface_source_ethernet_route.dart';

class DomainDevicesInterfaceSourceEthernet {
  /// Configures the IP settings associated with the Ethernet source of the network interface.
  final pulumi.Input<List<DomainDevicesInterfaceSourceEthernetIp>>? ips;
  /// Configures routing settings for the Ethernet interface, defining how network traffic is managed.
  final pulumi.Input<List<DomainDevicesInterfaceSourceEthernetRoute>>? routes;

  /// Creates a new [DomainDevicesInterfaceSourceEthernet].
  /// [ips] Configures the IP settings associated with the Ethernet source of the network interface.
  /// [routes] Configures routing settings for the Ethernet interface, defining how network traffic is managed.
  DomainDevicesInterfaceSourceEthernet({
    this.ips,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ips': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterfaceSourceEthernetIp>, List<Map<String, dynamic>>>(ips, (value) => pulumi.Input.encodeList<DomainDevicesInterfaceSourceEthernetIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterfaceSourceEthernetRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<DomainDevicesInterfaceSourceEthernetRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesInterfaceSourceEthernet.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceEthernet(
      ips: map['ips'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInterfaceSourceEthernetIp>(map['ips']!, (value) => DomainDevicesInterfaceSourceEthernetIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInterfaceSourceEthernetRoute>(map['routes']!, (value) => DomainDevicesInterfaceSourceEthernetRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

