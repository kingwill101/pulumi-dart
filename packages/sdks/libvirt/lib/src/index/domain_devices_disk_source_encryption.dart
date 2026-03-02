// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_encryption_secret.dart';

class DomainDevicesDiskSourceEncryption {
  /// Specifies the encryption engine utilized for encrypting the disk.
  final pulumi.Input<String>? engine;
  /// Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  final pulumi.Input<String>? format;
  /// Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  final pulumi.Input<List<DomainDevicesDiskSourceEncryptionSecret>>? secrets;

  /// Creates a new [DomainDevicesDiskSourceEncryption].
  /// [engine] Specifies the encryption engine utilized for encrypting the disk.
  /// [format] Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  /// [secrets] Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  DomainDevicesDiskSourceEncryption({
    this.engine,
    this.format,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'format': ?format,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskSourceEncryptionSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<DomainDevicesDiskSourceEncryptionSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskSourceEncryption.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceEncryption(
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskSourceEncryptionSecret>(map['secrets']!, (value) => DomainDevicesDiskSourceEncryptionSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

