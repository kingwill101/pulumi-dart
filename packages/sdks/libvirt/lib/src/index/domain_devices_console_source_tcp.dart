// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_console_source_tcp_reconnect.dart';

class DomainDevicesConsoleSourceTcp {
  /// Sets the host address for the TCP connection in the random number generator backend.
  final pulumi.Input<String>? host;
  /// Specifies the operation mode for TCP in the random number generator backend.
  final pulumi.Input<String>? mode;
  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final pulumi.Input<DomainDevicesConsoleSourceTcpReconnect>? reconnect;
  /// Defines the service attribute for the TCP connection in the random number generator backend.
  final pulumi.Input<String>? service;
  /// Enables or disables TLS encryption for the TCP connection in the backend.
  final pulumi.Input<String>? tls;

  /// Creates a new [DomainDevicesConsoleSourceTcp].
  /// [host] Sets the host address for the TCP connection in the random number generator backend.
  /// [mode] Specifies the operation mode for TCP in the random number generator backend.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [service] Defines the service attribute for the TCP connection in the random number generator backend.
  /// [tls] Enables or disables TLS encryption for the TCP connection in the backend.
  DomainDevicesConsoleSourceTcp({
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
      'reconnect': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceTcpReconnect, Map<String, dynamic>>(reconnect, (value) => value.toMap()),
      'service': ?service,
      'tls': ?tls,
    };
  }

  factory DomainDevicesConsoleSourceTcp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceTcp(
      host: map['host'] == null ? null : (map['host']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      reconnect: map['reconnect'] == null ? null : (DomainDevicesConsoleSourceTcpReconnect.fromMap((map['reconnect']! as Map).cast<String, dynamic>())).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
      tls: map['tls'] == null ? null : (map['tls']! as String).input(),
    );
  }
}

