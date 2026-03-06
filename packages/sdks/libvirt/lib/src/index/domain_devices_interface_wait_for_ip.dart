// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceWaitForIp {
  /// Source to query for IP addresses: 'lease', 'agent', or 'any'. Default: 'any'.
  final pulumi.Input<String>? source;
  /// Maximum time to wait for IP address in seconds. Default: 300.
  final pulumi.Input<double>? timeout;

  /// Creates a new [DomainDevicesInterfaceWaitForIp].
  /// [source] Source to query for IP addresses: 'lease', 'agent', or 'any'. Default: 'any'.
  /// [timeout] Maximum time to wait for IP address in seconds. Default: 300.
  const DomainDevicesInterfaceWaitForIp({
    this.source,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source,
      'timeout': ?timeout,
    };
  }

  factory DomainDevicesInterfaceWaitForIp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceWaitForIp(
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

