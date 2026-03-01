// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceNetworkReconnect {
  /// Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  final String delay;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkReconnect].
  /// [delay] Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  DomainDevicesDiskMirrorSourceNetworkReconnect({
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delay': delay,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkReconnect(
      delay: map['delay'] as String,
    );
  }
}

