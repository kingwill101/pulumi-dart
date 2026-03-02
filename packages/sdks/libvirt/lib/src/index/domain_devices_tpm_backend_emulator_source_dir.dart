// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendEmulatorSourceDir {
  /// Sets the path to the directory source for the emulator TPM backend.
  final pulumi.Input<String>? path;

  /// Creates a new [DomainDevicesTpmBackendEmulatorSourceDir].
  /// [path] Sets the path to the directory source for the emulator TPM backend.
  DomainDevicesTpmBackendEmulatorSourceDir({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory DomainDevicesTpmBackendEmulatorSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorSourceDir(
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

