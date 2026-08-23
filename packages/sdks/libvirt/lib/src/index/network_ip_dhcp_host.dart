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
  const NetworkIpDhcpHost({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lease: (() { final guardedValue = map['lease']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkIpDhcpHostLease.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mac: (() { final guardedValue = map['mac']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
