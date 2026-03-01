// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceReservationsSourceTcpReconnect {
  /// Enables or disables the automatic reconnection feature for the UNIX domain socket.
  final String enabled;
  /// Sets the timeout duration for reconnections in the UNIX socket settings.
  final double? timeout;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceTcpReconnect].
  /// [enabled] Enables or disables the automatic reconnection feature for the UNIX domain socket.
  /// [timeout] Sets the timeout duration for reconnections in the UNIX socket settings.
  DomainDevicesDiskMirrorSourceReservationsSourceTcpReconnect({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeout': ?timeout,
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceTcpReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceTcpReconnect(
      enabled: map['enabled'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as double,
    );
  }
}

