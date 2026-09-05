// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final pulumi.Input<String?>? dir;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  const DomainDevicesDiskBackingStoreSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceDir(
      dir: (() { final guardedValue = map['dir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
