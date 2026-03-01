// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_dns_host_hostname.dart';

class NetworkDnsHost {
  /// Configures the hostname settings for DNS, specifying how hosts within the network are identified.
  final List<NetworkDnsHostHostname>? hostnames;
  /// Sets the IP address of the host for DNS resolution.
  final String ip;

  /// Creates a new [NetworkDnsHost].
  /// [hostnames] Configures the hostname settings for DNS, specifying how hosts within the network are identified.
  /// [ip] Sets the IP address of the host for DNS resolution.
  NetworkDnsHost({
    this.hostnames,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames == null ? null : pulumi.Input.encodeList<NetworkDnsHostHostname, Map<String, dynamic>>(hostnames!, (value) => value.toMap()),
      'ip': ip,
    };
  }

  factory NetworkDnsHost.fromMap(Map<String, dynamic> map) {
    return NetworkDnsHost(
      hostnames: map['hostnames'] == null ? null : pulumi.Input.decodeList<NetworkDnsHostHostname>(map['hostnames'], (value) => NetworkDnsHostHostname.fromMap((value as Map).cast<String, dynamic>())),
      ip: map['ip'] as String,
    );
  }
}

