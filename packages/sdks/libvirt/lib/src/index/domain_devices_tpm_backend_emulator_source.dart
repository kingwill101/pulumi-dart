// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_emulator_source_dir.dart';
import 'domain_devices_tpm_backend_emulator_source_file.dart';

class DomainDevicesTpmBackendEmulatorSource {
  /// Specifies the directory source setting for the emulator TPM backend.
  final pulumi.Input<DomainDevicesTpmBackendEmulatorSourceDir>? dir;
  /// Specifies the file source setting for the emulator TPM backend.
  final pulumi.Input<DomainDevicesTpmBackendEmulatorSourceFile>? file;

  /// Creates a new [DomainDevicesTpmBackendEmulatorSource].
  /// [dir] Specifies the directory source setting for the emulator TPM backend.
  /// [file] Specifies the file source setting for the emulator TPM backend.
  DomainDevicesTpmBackendEmulatorSource({
    this.dir,
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendEmulatorSourceDir, Map<String, dynamic>>(dir, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendEmulatorSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendEmulatorSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorSource(
      dir: map['dir'] == null ? null : (DomainDevicesTpmBackendEmulatorSourceDir.fromMap((map['dir']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesTpmBackendEmulatorSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

