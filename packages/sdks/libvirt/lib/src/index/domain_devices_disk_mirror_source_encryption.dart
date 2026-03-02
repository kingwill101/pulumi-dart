// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_encryption_secret.dart';

class DomainDevicesDiskMirrorSourceEncryption {
  /// Specifies the encryption engine utilized for encrypting the disk.
  final pulumi.Input<String>? engine;
  /// Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  final pulumi.Input<String>? format;
  /// Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceEncryptionSecret>>? secrets;

  /// Creates a new [DomainDevicesDiskMirrorSourceEncryption].
  /// [engine] Specifies the encryption engine utilized for encrypting the disk.
  /// [format] Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  /// [secrets] Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  DomainDevicesDiskMirrorSourceEncryption({
    this.engine,
    this.format,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'format': ?format,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceEncryptionSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceEncryptionSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorSourceEncryption.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceEncryption(
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceEncryptionSecret>(map['secrets'], (value) => DomainDevicesDiskMirrorSourceEncryptionSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

