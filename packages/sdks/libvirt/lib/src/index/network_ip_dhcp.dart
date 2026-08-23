// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_ip_dhcp_bootp.dart';
import 'network_ip_dhcp_host.dart';
import 'network_ip_dhcp_range.dart';

class NetworkIpDhcp {
  /// Configures BOOTP settings for the DHCP configuration.
  final pulumi.Input<List<NetworkIpDhcpBootp>>? bootps;
  /// Configures host entries for DHCP clients within the network.
  final pulumi.Input<List<NetworkIpDhcpHost>>? hosts;
  /// Represents the DHCP range for IP addresses to be allocated.
  final pulumi.Input<List<NetworkIpDhcpRange>>? ranges;

  /// Creates a new [NetworkIpDhcp].
  /// [bootps] Configures BOOTP settings for the DHCP configuration.
  /// [hosts] Configures host entries for DHCP clients within the network.
  /// [ranges] Represents the DHCP range for IP addresses to be allocated.
  const NetworkIpDhcp({
    this.bootps,
    this.hosts,
    this.ranges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootps': ?pulumi.Input.mapOptionalInputValue<List<NetworkIpDhcpBootp>, List<Map<String, dynamic>>>(bootps, (value) => pulumi.Input.encodeList<NetworkIpDhcpBootp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<NetworkIpDhcpHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<NetworkIpDhcpHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<NetworkIpDhcpRange>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<NetworkIpDhcpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkIpDhcp.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcp(
      bootps: (() { final guardedValue = map['bootps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkIpDhcpBootp>(guardedValue, (value) => NetworkIpDhcpBootp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkIpDhcpHost>(guardedValue, (value) => NetworkIpDhcpHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkIpDhcpRange>(guardedValue, (value) => NetworkIpDhcpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
