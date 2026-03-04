// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemTarget {
  /// Configures the directory path for the target where the filesystem is mounted.
  final pulumi.Input<String> dir;

  /// Creates a new [DomainDevicesFilesystemTarget].
  /// [dir] Configures the directory path for the target where the filesystem is mounted.
  DomainDevicesFilesystemTarget({required this.dir});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dir': dir};
  }

  factory DomainDevicesFilesystemTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemTarget(
      dir: pulumi.Input.fromValue(map['dir'] as String),
    );
  }
}
