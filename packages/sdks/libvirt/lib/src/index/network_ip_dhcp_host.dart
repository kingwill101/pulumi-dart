// ignore_for_file: unused_element, unnecessary_cast

import 'network_ip_dhcp_host_lease.dart';

class NetworkIpDhcpHost {
  /// Specifies the unique identifier for a DHCP host entry.
  final String? id;
  /// Sets the IP address for a DHCP host entry.
  final String? ip;
  /// Configures lease settings for DHCP host entries.
  final NetworkIpDhcpHostLease? lease;
  /// Specifies the MAC address of the DHCP host.
  final String? mac;
  /// Defines the name for the DHCP host entry.
  final String? name;

  /// Creates a new [NetworkIpDhcpHost].
  /// [id] Specifies the unique identifier for a DHCP host entry.
  /// [ip] Sets the IP address for a DHCP host entry.
  /// [lease] Configures lease settings for DHCP host entries.
  /// [mac] Specifies the MAC address of the DHCP host.
  /// [name] Defines the name for the DHCP host entry.
  NetworkIpDhcpHost({
    this.id,
    this.ip,
    this.lease,
    this.mac,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ip': ?ip,
      'lease': ?lease == null ? null : lease!.toMap(),
      'mac': ?mac,
      'name': ?name,
    };
  }

  factory NetworkIpDhcpHost.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpHost(
      id: map['id'] == null ? null : map['id'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
      lease: map['lease'] == null ? null : NetworkIpDhcpHostLease.fromMap((map['lease'] as Map).cast<String, dynamic>()),
      mac: map['mac'] == null ? null : map['mac'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

