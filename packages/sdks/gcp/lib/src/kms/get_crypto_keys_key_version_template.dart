// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCryptoKeysKeyVersionTemplate {
  /// The algorithm to use when creating a version based on this template.
  /// See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.
  final pulumi.Input<String> algorithm;
  /// The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  final pulumi.Input<String> protectionLevel;

  /// Creates a new [GetCryptoKeysKeyVersionTemplate].
  /// [algorithm] The algorithm to use when creating a version based on this template.
  /// [protectionLevel] The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  const GetCryptoKeysKeyVersionTemplate({
    required this.algorithm,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'protectionLevel': protectionLevel,
    };
  }

  factory GetCryptoKeysKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysKeyVersionTemplate(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      protectionLevel: pulumi.Input.fromValue(map['protectionLevel'] as String),
    );
  }
}

