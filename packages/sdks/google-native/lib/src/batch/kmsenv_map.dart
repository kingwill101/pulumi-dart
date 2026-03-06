// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KMSEnvMap {
  /// The value of the cipherText response from the `encrypt` method.
  final pulumi.Input<String>? cipherText;
  /// The name of the KMS key that will be used to decrypt the cipher text.
  final pulumi.Input<String>? keyName;

  /// Creates a new [KMSEnvMap].
  /// [cipherText] The value of the cipherText response from the `encrypt` method.
  /// [keyName] The name of the KMS key that will be used to decrypt the cipher text.
  const KMSEnvMap({
    this.cipherText,
    this.keyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherText': ?cipherText,
      'keyName': ?keyName,
    };
  }

  factory KMSEnvMap.fromMap(Map<String, dynamic> map) {
    return KMSEnvMap(
      cipherText: (() { final guardedValue = map['cipherText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

