// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_tcp_reconnect.dart';

class DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp {
  /// Sets the host address for the TCP connection in the random number generator backend.
  final pulumi.Input<String>? host;

  /// Specifies the operation mode for TCP in the random number generator backend.
  final pulumi.Input<String>? mode;

  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final pulumi.Input<
    DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect
  >?
  reconnect;

  /// Defines the service attribute for the TCP connection in the random number generator backend.
  final pulumi.Input<String>? service;

  /// Enables or disables TLS encryption for the TCP connection in the backend.
  final pulumi.Input<String>? tls;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp].
  /// [host] Sets the host address for the TCP connection in the random number generator backend.
  /// [mode] Specifies the operation mode for TCP in the random number generator backend.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [service] Defines the service attribute for the TCP connection in the random number generator backend.
  /// [tls] Enables or disables TLS encryption for the TCP connection in the backend.
  DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp({
    this.host,
    this.mode,
    this.reconnect,
    this.service,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'mode': ?mode,
      'reconnect':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect,
            Map<String, dynamic>
          >(reconnect, (value) => value.toMap()),
      'service': ?service,
      'tls': ?tls,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp(
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reconnect: (() {
        final guardedValue = map['reconnect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcpReconnect.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tls: (() {
        final guardedValue = map['tls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
