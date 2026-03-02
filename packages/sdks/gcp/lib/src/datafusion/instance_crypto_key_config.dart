// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceCryptoKeyConfig {
  /// The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of projects/*/locations/*/keyRings/*/cryptoKeys/*.
  final pulumi.Input<String> keyReference;

  /// Creates a new [InstanceCryptoKeyConfig].
  /// [keyReference] The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of projects/*/locations/*/keyRings/*/cryptoKeys/*.
  InstanceCryptoKeyConfig({
    required this.keyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyReference': keyReference,
    };
  }

  factory InstanceCryptoKeyConfig.fromMap(Map<String, dynamic> map) {
    return InstanceCryptoKeyConfig(
      keyReference: (map['keyReference'] as String).input(),
    );
  }
}

