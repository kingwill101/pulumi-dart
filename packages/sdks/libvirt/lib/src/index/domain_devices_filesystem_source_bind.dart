// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemSourceBind {
  /// Sets the directory from which the filesystem is bound.
  final pulumi.Input<String> dir;

  /// Creates a new [DomainDevicesFilesystemSourceBind].
  /// [dir] Sets the directory from which the filesystem is bound.
  DomainDevicesFilesystemSourceBind({
    required this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': dir,
    };
  }

  factory DomainDevicesFilesystemSourceBind.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceBind(
      dir: (map['dir'] as String).input(),
    );
  }
}

