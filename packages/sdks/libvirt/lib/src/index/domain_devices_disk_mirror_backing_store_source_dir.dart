// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final pulumi.Input<String>? dir;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainDevicesDiskMirrorBackingStoreSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceDir(
      dir: map['dir'] == null ? null : (map['dir'] as String).input(),
    );
  }
}

