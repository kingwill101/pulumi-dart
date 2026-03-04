// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect {
  /// Enables or disables the automatic reconnection feature for the UNIX domain socket.
  final pulumi.Input<String> enabled;

  /// Sets the timeout duration for reconnections in the UNIX socket settings.
  final pulumi.Input<double>? timeout;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect].
  /// [enabled] Enables or disables the automatic reconnection feature for the UNIX domain socket.
  /// [timeout] Sets the timeout duration for reconnections in the UNIX socket settings.
  DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'timeout': ?timeout};
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect(
      enabled: pulumi.Input.fromValue(map['enabled'] as String),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
