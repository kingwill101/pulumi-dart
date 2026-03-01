// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSerialSourceTcpReconnect {
  /// Enables or disables the automatic reconnection feature for the UNIX domain socket.
  final String enabled;
  /// Sets the timeout duration for reconnections in the UNIX socket settings.
  final double? timeout;

  /// Creates a new [DomainDevicesSerialSourceTcpReconnect].
  /// [enabled] Enables or disables the automatic reconnection feature for the UNIX domain socket.
  /// [timeout] Sets the timeout duration for reconnections in the UNIX socket settings.
  DomainDevicesSerialSourceTcpReconnect({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeout': ?timeout,
    };
  }

  factory DomainDevicesSerialSourceTcpReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceTcpReconnect(
      enabled: map['enabled'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as double,
    );
  }
}

