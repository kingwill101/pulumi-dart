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
  NetworkIpDhcp({
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
      bootps: map['bootps'] == null ? null : (pulumi.Input.decodeList<NetworkIpDhcpBootp>(map['bootps']!, (value) => NetworkIpDhcpBootp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<NetworkIpDhcpHost>(map['hosts']!, (value) => NetworkIpDhcpHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ranges: map['ranges'] == null ? null : (pulumi.Input.decodeList<NetworkIpDhcpRange>(map['ranges']!, (value) => NetworkIpDhcpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

