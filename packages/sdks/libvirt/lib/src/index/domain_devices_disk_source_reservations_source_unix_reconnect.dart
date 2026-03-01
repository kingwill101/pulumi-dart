// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceReservationsSourceUnixReconnect {
  /// Enables or disables the automatic reconnection feature for the UNIX domain socket.
  final String enabled;
  /// Sets the timeout duration for reconnections in the UNIX socket settings.
  final double? timeout;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceUnixReconnect].
  /// [enabled] Enables or disables the automatic reconnection feature for the UNIX domain socket.
  /// [timeout] Sets the timeout duration for reconnections in the UNIX socket settings.
  DomainDevicesDiskSourceReservationsSourceUnixReconnect({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeout': ?timeout,
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceUnixReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceUnixReconnect(
      enabled: map['enabled'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as double,
    );
  }
}

