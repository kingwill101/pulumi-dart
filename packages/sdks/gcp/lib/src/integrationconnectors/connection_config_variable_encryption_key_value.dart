// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionConfigVariableEncryptionKeyValue {
  /// The [KMS key name] with which the content of the Operation is encrypted. The
  /// expected format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
  /// Will be empty string if google managed.
  final pulumi.Input<String>? kmsKeyName;
  /// Type of Encryption Key
  /// Possible values are: `GOOGLE_MANAGED`, `CUSTOMER_MANAGED`.
  final pulumi.Input<String> type;

  /// Creates a new [ConnectionConfigVariableEncryptionKeyValue].
  /// [kmsKeyName] The [KMS key name] with which the content of the Operation is encrypted. The
  /// [type] Type of Encryption Key
  ConnectionConfigVariableEncryptionKeyValue({
    this.kmsKeyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'type': type,
    };
  }

  factory ConnectionConfigVariableEncryptionKeyValue.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigVariableEncryptionKeyValue(
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

