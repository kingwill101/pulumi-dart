// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionCryptoKeyConfig {
  /// Required. The name of the key which is used to encrypt/decrypt customer data. For key
  /// in Cloud KMS, the key should be in the format of
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String> keyReference;

  /// Creates a new [ConnectionCryptoKeyConfig].
  /// [keyReference] Required. The name of the key which is used to encrypt/decrypt customer data. For key
  ConnectionCryptoKeyConfig({
    required this.keyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyReference': keyReference,
    };
  }

  factory ConnectionCryptoKeyConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionCryptoKeyConfig(
      keyReference: pulumi.Input.fromValue(map['keyReference'] as String),
    );
  }
}

