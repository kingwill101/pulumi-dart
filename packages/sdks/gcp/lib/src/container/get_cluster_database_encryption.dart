// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterDatabaseEncryption {
  /// The key to use to encrypt/decrypt secrets.
  final pulumi.Input<String> keyName;
  /// ENCRYPTED, ALL_OBJECTS_ENCRYPTION_ENABLED or DECRYPTED.
  final pulumi.Input<String> state;

  /// Creates a new [GetClusterDatabaseEncryption].
  /// [keyName] The key to use to encrypt/decrypt secrets.
  /// [state] ENCRYPTED, ALL_OBJECTS_ENCRYPTION_ENABLED or DECRYPTED.
  const GetClusterDatabaseEncryption({
    required this.keyName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'state': state,
    };
  }

  factory GetClusterDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return GetClusterDatabaseEncryption(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
