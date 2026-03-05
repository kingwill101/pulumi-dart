// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.
class CryptoKeyConfigResponse {
  /// The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String> keyReference;

  /// Creates a new [CryptoKeyConfigResponse].
  /// [keyReference] The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  CryptoKeyConfigResponse({
    required this.keyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyReference': keyReference,
    };
  }

  factory CryptoKeyConfigResponse.fromMap(Map<String, dynamic> map) {
    return CryptoKeyConfigResponse(
      keyReference: pulumi.Input.fromValue(map['keyReference'] as String),
    );
  }
}

