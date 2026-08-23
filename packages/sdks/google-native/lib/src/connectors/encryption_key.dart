// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_type.dart';

/// Encryption Key value.
class EncryptionKey {
  /// The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  final pulumi.Input<String>? kmsKeyName;
  /// Type.
  final pulumi.Input<EncryptionKeyType>? type;

  /// Creates a new [EncryptionKey].
  /// [kmsKeyName] The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  /// [type] Type.
  const EncryptionKey({
    this.kmsKeyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'type': ?pulumi.Input.mapOptionalInputValue<EncryptionKeyType, String>(type, (value) => value.wireValue),
    };
  }

  factory EncryptionKey.fromMap(Map<String, dynamic> map) {
    return EncryptionKey(
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionKeyType.fromValue(guardedValue as String)); })(),
    );
  }
}
