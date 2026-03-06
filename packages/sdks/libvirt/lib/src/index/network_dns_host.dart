// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_dns_host_hostname.dart';

class NetworkDnsHost {
  /// Configures the hostname settings for DNS, specifying how hosts within the network are identified.
  final pulumi.Input<List<NetworkDnsHostHostname>>? hostnames;
  /// Sets the IP address of the host for DNS resolution.
  final pulumi.Input<String> ip;

  /// Creates a new [NetworkDnsHost].
  /// [hostnames] Configures the hostname settings for DNS, specifying how hosts within the network are identified.
  /// [ip] Sets the IP address of the host for DNS resolution.
  const NetworkDnsHost({
    this.hostnames,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?pulumi.Input.mapOptionalInputValue<List<NetworkDnsHostHostname>, List<Map<String, dynamic>>>(hostnames, (value) => pulumi.Input.encodeList<NetworkDnsHostHostname, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ip': ip,
    };
  }

  factory NetworkDnsHost.fromMap(Map<String, dynamic> map) {
    return NetworkDnsHost(
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkDnsHostHostname>(guardedValue, (value) => NetworkDnsHostHostname.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}

