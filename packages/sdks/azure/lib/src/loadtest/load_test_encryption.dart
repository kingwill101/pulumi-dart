// ignore_for_file: unused_element, unnecessary_cast

import 'load_test_encryption_identity.dart';

class LoadTestEncryption {
  /// An `identity` block as defined below. Changing this forces a new Load Test to be created.
  final LoadTestEncryptionIdentity identity;
  /// The URI specifying the Key vault and key to be used to encrypt data in this resource. The URI should include the key version. Changing this forces a new Load Test to be created.
  final String keyUrl;

  /// Creates a new [LoadTestEncryption].
  /// [identity] An `identity` block as defined below. Changing this forces a new Load Test to be created.
  /// [keyUrl] The URI specifying the Key vault and key to be used to encrypt data in this resource. The URI should include the key version. Changing this forces a new Load Test to be created.
  LoadTestEncryption({
    required this.identity,
    required this.keyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity.toMap(),
      'keyUrl': keyUrl,
    };
  }

  factory LoadTestEncryption.fromMap(Map<String, dynamic> map) {
    return LoadTestEncryption(
      identity: LoadTestEncryptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyUrl: map['keyUrl'] as String,
    );
  }
}

