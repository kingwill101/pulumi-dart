// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmBackendEmulatorSourceFile {
  /// Sets the path to the file source for the emulator TPM backend.
  final String? path;

  /// Creates a new [DomainDevicesTpmBackendEmulatorSourceFile].
  /// [path] Sets the path to the file source for the emulator TPM backend.
  DomainDevicesTpmBackendEmulatorSourceFile({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory DomainDevicesTpmBackendEmulatorSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorSourceFile(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

