// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceWaitForIp {
  /// CIDR network prefix to wait for (e.g. `"0.0.0.0/0"` for any IPv4, `"::/0"` for any IPv6). If omitted, any address satisfies the wait. Matching is by CIDR membership only; loopback and link-local addresses are not excluded (127.0.0.1 matches 0.0.0.0/0). To wait for a routable address, specify your subnet.
  final pulumi.Input<String?>? network;
  /// Source to query for IP addresses: 'lease', 'agent', or 'any'. Default: 'any'.
  final pulumi.Input<String?>? source;
  /// Maximum time to wait for IP address in seconds. Default: 300.
  final pulumi.Input<double?>? timeout;

  /// Creates a new [DomainDevicesInterfaceWaitForIp].
  /// [network] CIDR network prefix to wait for (e.g. `"0.0.0.0/0"` for any IPv4, `"::/0"` for any IPv6). If omitted, any address satisfies the wait. Matching is by CIDR membership only; loopback and link-local addresses are not excluded (127.0.0.1 matches 0.0.0.0/0). To wait for a routable address, specify your subnet.
  /// [source] Source to query for IP addresses: 'lease', 'agent', or 'any'. Default: 'any'.
  /// [timeout] Maximum time to wait for IP address in seconds. Default: 300.
  const DomainDevicesInterfaceWaitForIp({
    this.network,
    this.source,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'source': ?source,
      'timeout': ?timeout,
    };
  }

  factory DomainDevicesInterfaceWaitForIp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceWaitForIp(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
