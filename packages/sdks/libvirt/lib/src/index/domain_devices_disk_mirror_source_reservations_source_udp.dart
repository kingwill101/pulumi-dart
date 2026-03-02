// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceReservationsSourceUdp {
  /// Sets the bind host address for the UDP connection in the random number generator backend.
  final pulumi.Input<String> bindHost;
  /// Specifies the service attribute for binding in the UDP settings.
  final pulumi.Input<String> bindService;
  /// Configures the host address used for the connection in the UDP settings.
  final pulumi.Input<String> connectHost;
  /// Defines the service attribute for the connection in the UDP settings.
  final pulumi.Input<String> connectService;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceUdp].
  /// [bindHost] Sets the bind host address for the UDP connection in the random number generator backend.
  /// [bindService] Specifies the service attribute for binding in the UDP settings.
  /// [connectHost] Configures the host address used for the connection in the UDP settings.
  /// [connectService] Defines the service attribute for the connection in the UDP settings.
  DomainDevicesDiskMirrorSourceReservationsSourceUdp({
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

  factory DomainDevicesDiskMirrorSourceReservationsSourceUdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceUdp(
      bindHost: (map['bindHost'] as String).input(),
      bindService: (map['bindService'] as String).input(),
      connectHost: (map['connectHost'] as String).input(),
      connectService: (map['connectService'] as String).input(),
    );
  }
}

