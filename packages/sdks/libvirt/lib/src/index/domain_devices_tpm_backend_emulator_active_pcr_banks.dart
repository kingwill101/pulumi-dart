// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendEmulatorActivePcrBanks {
  /// Configures the SHA-1 PCR bank as active for the emulator TPM settings.
  final pulumi.Input<bool>? sha1;
  /// Configures the SHA-256 PCR bank as active for the emulator TPM settings.
  final pulumi.Input<bool>? sha256;
  /// Configures the SHA-384 PCR bank as active for the emulator TPM settings.
  final pulumi.Input<bool>? sha384;
  /// Configures the SHA-512 PCR bank as active for the emulator TPM settings.
  final pulumi.Input<bool>? sha512;

  /// Creates a new [DomainDevicesTpmBackendEmulatorActivePcrBanks].
  /// [sha1] Configures the SHA-1 PCR bank as active for the emulator TPM settings.
  /// [sha256] Configures the SHA-256 PCR bank as active for the emulator TPM settings.
  /// [sha384] Configures the SHA-384 PCR bank as active for the emulator TPM settings.
  /// [sha512] Configures the SHA-512 PCR bank as active for the emulator TPM settings.
  const DomainDevicesTpmBackendEmulatorActivePcrBanks({
    this.sha1,
    this.sha256,
    this.sha384,
    this.sha512,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha1': ?sha1,
      'sha256': ?sha256,
      'sha384': ?sha384,
      'sha512': ?sha512,
    };
  }

  factory DomainDevicesTpmBackendEmulatorActivePcrBanks.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorActivePcrBanks(
      sha1: (() { final guardedValue = map['sha1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sha384: (() { final guardedValue = map['sha384']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sha512: (() { final guardedValue = map['sha512']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
