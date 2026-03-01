// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceVhostUserUdp {
  /// Sets the bind host address for the UDP connection in the random number generator backend.
  final String bindHost;
  /// Specifies the service attribute for binding in the UDP settings.
  final String bindService;
  /// Configures the host address used for the connection in the UDP settings.
  final String connectHost;
  /// Defines the service attribute for the connection in the UDP settings.
  final String connectService;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserUdp].
  /// [bindHost] Sets the bind host address for the UDP connection in the random number generator backend.
  /// [bindService] Specifies the service attribute for binding in the UDP settings.
  /// [connectHost] Configures the host address used for the connection in the UDP settings.
  /// [connectService] Defines the service attribute for the connection in the UDP settings.
  DomainDevicesDiskMirrorSourceVhostUserUdp({
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

  factory DomainDevicesDiskMirrorSourceVhostUserUdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserUdp(
      bindHost: map['bindHost'] as String,
      bindService: map['bindService'] as String,
      connectHost: map['connectHost'] as String,
      connectService: map['connectService'] as String,
    );
  }
}

