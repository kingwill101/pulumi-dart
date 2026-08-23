// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendEmulatorSourceFile {
  /// Sets the path to the file source for the emulator TPM backend.
  final pulumi.Input<String>? path;

  /// Creates a new [DomainDevicesTpmBackendEmulatorSourceFile].
  /// [path] Sets the path to the file source for the emulator TPM backend.
  const DomainDevicesTpmBackendEmulatorSourceFile({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory DomainDevicesTpmBackendEmulatorSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorSourceFile(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
