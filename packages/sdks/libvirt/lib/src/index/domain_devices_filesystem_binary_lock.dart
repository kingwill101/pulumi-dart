// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemBinaryLock {
  /// Controls flocking for the binary filesystem device's lock settings.
  final String? flock;
  /// Configures whether the lock for the binary filesystem is POSIX compliant.
  final String? posix;

  /// Creates a new [DomainDevicesFilesystemBinaryLock].
  /// [flock] Controls flocking for the binary filesystem device's lock settings.
  /// [posix] Configures whether the lock for the binary filesystem is POSIX compliant.
  DomainDevicesFilesystemBinaryLock({
    this.flock,
    this.posix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flock': ?flock,
      'posix': ?posix,
    };
  }

  factory DomainDevicesFilesystemBinaryLock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinaryLock(
      flock: map['flock'] == null ? null : map['flock'] as String,
      posix: map['posix'] == null ? null : map['posix'] as String,
    );
  }
}

