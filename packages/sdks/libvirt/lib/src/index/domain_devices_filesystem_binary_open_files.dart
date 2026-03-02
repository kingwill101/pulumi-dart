// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemBinaryOpenFiles {
  /// Defines the upper limit for the number of open files in the binary filesystem.
  final pulumi.Input<double> max;

  /// Creates a new [DomainDevicesFilesystemBinaryOpenFiles].
  /// [max] Defines the upper limit for the number of open files in the binary filesystem.
  DomainDevicesFilesystemBinaryOpenFiles({
    required this.max,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
    };
  }

  factory DomainDevicesFilesystemBinaryOpenFiles.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinaryOpenFiles(
      max: (map['max'] as double).input(),
    );
  }
}

