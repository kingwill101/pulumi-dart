// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_encryption_state_container_v1beta1.dart';

/// Configuration of etcd encryption.
class DatabaseEncryptionContainerV1beta1 {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final pulumi.Input<String>? keyName;

  /// The desired state of etcd encryption.
  final pulumi.Input<DatabaseEncryptionStateContainerV1beta1>? state;

  /// Creates a new [DatabaseEncryptionContainerV1beta1].
  /// [keyName] Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  /// [state] The desired state of etcd encryption.
  DatabaseEncryptionContainerV1beta1({this.keyName, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'state':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseEncryptionStateContainerV1beta1,
            String
          >(state, (value) => value.wireValue),
    };
  }

  factory DatabaseEncryptionContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryptionContainerV1beta1(
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseEncryptionStateContainerV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
