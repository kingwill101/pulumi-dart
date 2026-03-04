// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_encryption_secret.dart';

class DomainOsNvRamSourceEncryption {
  /// Specifies the encryption engine utilized for encrypting the disk.
  final pulumi.Input<String>? engine;

  /// Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  final pulumi.Input<String>? format;

  /// Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  final pulumi.Input<List<DomainOsNvRamSourceEncryptionSecret>>? secrets;

  /// Creates a new [DomainOsNvRamSourceEncryption].
  /// [engine] Specifies the encryption engine utilized for encrypting the disk.
  /// [format] Configures the format of the encrypted disk storage, determining how the data is stored and accessed.
  /// [secrets] Specifies the secrets used for encryption, which can include various elements needed for accessing encrypted data.
  DomainOsNvRamSourceEncryption({this.engine, this.format, this.secrets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'format': ?format,
      'secrets':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainOsNvRamSourceEncryptionSecret>,
            List<Map<String, dynamic>>
          >(
            secrets,
            (value) =>
                pulumi.Input.encodeList<
                  DomainOsNvRamSourceEncryptionSecret,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainOsNvRamSourceEncryption.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceEncryption(
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secrets: (() {
        final guardedValue = map['secrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainOsNvRamSourceEncryptionSecret>(
            guardedValue,
            (value) => DomainOsNvRamSourceEncryptionSecret.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
