// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final String seconds;

  /// Creates a new [DomainDevicesDiskMirrorSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  DomainDevicesDiskMirrorSourceTimeout({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory DomainDevicesDiskMirrorSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceTimeout(
      seconds: map['seconds'] as String,
    );
  }
}

