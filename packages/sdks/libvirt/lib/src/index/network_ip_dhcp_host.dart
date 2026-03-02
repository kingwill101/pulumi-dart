// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_ip_dhcp_host_lease.dart';

class NetworkIpDhcpHost {
  /// Specifies the unique identifier for a DHCP host entry.
  final pulumi.Input<String>? id;
  /// Sets the IP address for a DHCP host entry.
  final pulumi.Input<String>? ip;
  /// Configures lease settings for DHCP host entries.
  final pulumi.Input<NetworkIpDhcpHostLease>? lease;
  /// Specifies the MAC address of the DHCP host.
  final pulumi.Input<String>? mac;
  /// Defines the name for the DHCP host entry.
  final pulumi.Input<String>? name;

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
      'lease': ?pulumi.Input.mapOptionalInputValue<NetworkIpDhcpHostLease, Map<String, dynamic>>(lease, (value) => value.toMap()),
      'mac': ?mac,
      'name': ?name,
    };
  }

  factory NetworkIpDhcpHost.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpHost(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      lease: map['lease'] == null ? null : (NetworkIpDhcpHostLease.fromMap((map['lease'] as Map).cast<String, dynamic>())).input(),
      mac: map['mac'] == null ? null : (map['mac'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

