// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskTransient {
  /// Indicates if the transient disk device shares backing storage with other devices.
  final String? shareBacking;

  /// Creates a new [DomainDevicesDiskTransient].
  /// [shareBacking] Indicates if the transient disk device shares backing storage with other devices.
  DomainDevicesDiskTransient({
    this.shareBacking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareBacking': ?shareBacking,
    };
  }

  factory DomainDevicesDiskTransient.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskTransient(
      shareBacking: map['shareBacking'] == null ? null : map['shareBacking'] as String,
    );
  }
}

