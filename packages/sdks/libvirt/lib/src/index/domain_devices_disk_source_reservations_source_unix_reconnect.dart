// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceReservationsSourceUnixReconnect {
  /// Enables or disables the automatic reconnection feature for the UNIX domain socket.
  final pulumi.Input<String> enabled;

  /// Sets the timeout duration for reconnections in the UNIX socket settings.
  final pulumi.Input<double>? timeout;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceUnixReconnect].
  /// [enabled] Enables or disables the automatic reconnection feature for the UNIX domain socket.
  /// [timeout] Sets the timeout duration for reconnections in the UNIX socket settings.
  DomainDevicesDiskSourceReservationsSourceUnixReconnect({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'timeout': ?timeout};
  }

  factory DomainDevicesDiskSourceReservationsSourceUnixReconnect.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskSourceReservationsSourceUnixReconnect(
      enabled: pulumi.Input.fromValue(map['enabled'] as String),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
