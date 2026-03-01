// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmBackendEmulatorActivePcrBanks {
  /// Configures the SHA-1 PCR bank as active for the emulator TPM settings.
  final bool? sha1;
  /// Configures the SHA-256 PCR bank as active for the emulator TPM settings.
  final bool? sha256;
  /// Configures the SHA-384 PCR bank as active for the emulator TPM settings.
  final bool? sha384;
  /// Configures the SHA-512 PCR bank as active for the emulator TPM settings.
  final bool? sha512;

  /// Creates a new [DomainDevicesTpmBackendEmulatorActivePcrBanks].
  /// [sha1] Configures the SHA-1 PCR bank as active for the emulator TPM settings.
  /// [sha256] Configures the SHA-256 PCR bank as active for the emulator TPM settings.
  /// [sha384] Configures the SHA-384 PCR bank as active for the emulator TPM settings.
  /// [sha512] Configures the SHA-512 PCR bank as active for the emulator TPM settings.
  DomainDevicesTpmBackendEmulatorActivePcrBanks({
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
      sha1: map['sha1'] == null ? null : map['sha1'] as bool,
      sha256: map['sha256'] == null ? null : map['sha256'] as bool,
      sha384: map['sha384'] == null ? null : map['sha384'] as bool,
      sha512: map['sha512'] == null ? null : map['sha512'] as bool,
    );
  }
}

