// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.
class CryptoKeyConfigDatafusionV1beta1 {
  /// The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? keyReference;

  /// Creates a new [CryptoKeyConfigDatafusionV1beta1].
  /// [keyReference] The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  const CryptoKeyConfigDatafusionV1beta1({
    this.keyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyReference': ?keyReference,
    };
  }

  factory CryptoKeyConfigDatafusionV1beta1.fromMap(Map<String, dynamic> map) {
    return CryptoKeyConfigDatafusionV1beta1(
      keyReference: (() { final guardedValue = map['keyReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
