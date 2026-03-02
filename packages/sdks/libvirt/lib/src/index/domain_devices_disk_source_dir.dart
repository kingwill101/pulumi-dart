// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final pulumi.Input<String>? dir;

  /// Creates a new [DomainDevicesDiskSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainDevicesDiskSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainDevicesDiskSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceDir(
      dir: map['dir'] == null ? null : (map['dir'] as String).input(),
    );
  }
}

