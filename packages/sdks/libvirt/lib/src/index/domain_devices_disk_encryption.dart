// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_encryption_secret.dart';

class DomainDevicesDiskEncryption {
  /// Specifies the encryption engine utilized for encrypting the disk.
  final String? engine;
  /// Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  final String? format;
  /// Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  final List<DomainDevicesDiskEncryptionSecret>? secrets;

  /// Creates a new [DomainDevicesDiskEncryption].
  /// [engine] Specifies the encryption engine utilized for encrypting the disk.
  /// [format] Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  /// [secrets] Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  DomainDevicesDiskEncryption({
    this.engine,
    this.format,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'format': ?format,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<DomainDevicesDiskEncryptionSecret, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskEncryption.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskEncryption(
      engine: map['engine'] == null ? null : map['engine'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskEncryptionSecret>(map['secrets'], (value) => DomainDevicesDiskEncryptionSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

