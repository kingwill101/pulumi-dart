// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceWaitForIp {
  /// Source to query for IP addresses: 'lease', 'agent', or 'any'. Default: 'any'.
  final String? source;
  /// Maximum time to wait for IP address in seconds. Default: 300.
  final double? timeout;

  /// Creates a new [DomainDevicesInterfaceWaitForIp].
  /// [source] Source to query for IP addresses: 'lease', 'agent', or 'any'. Default: 'any'.
  /// [timeout] Maximum time to wait for IP address in seconds. Default: 300.
  DomainDevicesInterfaceWaitForIp({
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
      source: map['source'] == null ? null : map['source'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as double,
    );
  }
}

