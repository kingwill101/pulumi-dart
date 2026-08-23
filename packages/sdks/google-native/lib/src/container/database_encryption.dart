// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_encryption_state.dart';

/// Configuration of etcd encryption.
class DatabaseEncryption {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final pulumi.Input<String>? keyName;
  /// The desired state of etcd encryption.
  final pulumi.Input<DatabaseEncryptionState>? state;

  /// Creates a new [DatabaseEncryption].
  /// [keyName] Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  /// [state] The desired state of etcd encryption.
  const DatabaseEncryption({
    this.keyName,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'state': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryptionState, String>(state, (value) => value.wireValue),
    };
  }

  factory DatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryption(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseEncryptionState.fromValue(guardedValue as String)); })(),
    );
  }
}
