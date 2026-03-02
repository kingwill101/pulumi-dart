// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemBinaryLock {
  /// Controls flocking for the binary filesystem device's lock settings.
  final pulumi.Input<String>? flock;
  /// Configures whether the lock for the binary filesystem is POSIX compliant.
  final pulumi.Input<String>? posix;

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
      flock: map['flock'] == null ? null : (map['flock']! as String).input(),
      posix: map['posix'] == null ? null : (map['posix']! as String).input(),
    );
  }
}

