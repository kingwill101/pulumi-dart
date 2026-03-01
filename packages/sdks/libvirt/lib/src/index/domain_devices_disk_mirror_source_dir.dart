// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final String? dir;

  /// Creates a new [DomainDevicesDiskMirrorSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainDevicesDiskMirrorSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainDevicesDiskMirrorSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceDir(
      dir: map['dir'] == null ? null : map['dir'] as String,
    );
  }
}

