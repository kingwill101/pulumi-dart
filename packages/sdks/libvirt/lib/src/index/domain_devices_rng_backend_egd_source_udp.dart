// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngBackendEgdSourceUdp {
  /// Sets the bind host address for the UDP connection in the random number generator backend.
  final pulumi.Input<String> bindHost;
  /// Specifies the service attribute for binding in the UDP settings.
  final pulumi.Input<String> bindService;
  /// Configures the host address used for the connection in the UDP settings.
  final pulumi.Input<String> connectHost;
  /// Defines the service attribute for the connection in the UDP settings.
  final pulumi.Input<String> connectService;

  /// Creates a new [DomainDevicesRngBackendEgdSourceUdp].
  /// [bindHost] Sets the bind host address for the UDP connection in the random number generator backend.
  /// [bindService] Specifies the service attribute for binding in the UDP settings.
  /// [connectHost] Configures the host address used for the connection in the UDP settings.
  /// [connectService] Defines the service attribute for the connection in the UDP settings.
  const DomainDevicesRngBackendEgdSourceUdp({
    required this.bindHost,
    required this.bindService,
    required this.connectHost,
    required this.connectService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindHost': bindHost,
      'bindService': bindService,
      'connectHost': connectHost,
      'connectService': connectService,
    };
  }

  factory DomainDevicesRngBackendEgdSourceUdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceUdp(
      bindHost: pulumi.Input.fromValue(map['bindHost'] as String),
      bindService: pulumi.Input.fromValue(map['bindService'] as String),
      connectHost: pulumi.Input.fromValue(map['connectHost'] as String),
      connectService: pulumi.Input.fromValue(map['connectService'] as String),
    );
  }
}
