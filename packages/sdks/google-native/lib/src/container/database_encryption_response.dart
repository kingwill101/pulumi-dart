// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of etcd encryption.
class DatabaseEncryptionResponse {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final pulumi.Input<String> keyName;
  /// The desired state of etcd encryption.
  final pulumi.Input<String> state;

  /// Creates a new [DatabaseEncryptionResponse].
  /// [keyName] Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  /// [state] The desired state of etcd encryption.
  const DatabaseEncryptionResponse({
    required this.keyName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'state': state,
    };
  }

  factory DatabaseEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryptionResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
