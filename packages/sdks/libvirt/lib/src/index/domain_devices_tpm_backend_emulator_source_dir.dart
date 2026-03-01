// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmBackendEmulatorSourceDir {
  /// Sets the path to the directory source for the emulator TPM backend.
  final String? path;

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
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

