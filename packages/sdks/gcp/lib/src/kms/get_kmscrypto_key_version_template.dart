// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKMSCryptoKeyVersionTemplate {
  /// The algorithm to use when creating a version based on this template.
  /// See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.
  final pulumi.Input<String> algorithm;
  /// The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  final pulumi.Input<String> protectionLevel;

  /// Creates a new [GetKMSCryptoKeyVersionTemplate].
  /// [algorithm] The algorithm to use when creating a version based on this template.
  /// [protectionLevel] The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  GetKMSCryptoKeyVersionTemplate({
    required this.algorithm,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'protectionLevel': protectionLevel,
    };
  }

  factory GetKMSCryptoKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyVersionTemplate(
      algorithm: (map['algorithm'] as String).input(),
      protectionLevel: (map['protectionLevel'] as String).input(),
    );
  }
}

