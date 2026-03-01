// ignore_for_file: unused_element, unnecessary_cast


class DomainOsBootDevice {
  /// Specifies the device type for booting the domain.
  final String dev;

  /// Creates a new [DomainOsBootDevice].
  /// [dev] Specifies the device type for booting the domain.
  DomainOsBootDevice({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainOsBootDevice.fromMap(Map<String, dynamic> map) {
    return DomainOsBootDevice(
      dev: map['dev'] as String,
    );
  }
}

