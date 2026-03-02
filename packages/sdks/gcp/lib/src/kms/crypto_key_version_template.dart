// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CryptoKeyVersionTemplate {
  /// The algorithm to use when creating a version based on this template.
  /// See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.
  final pulumi.Input<String> algorithm;
  /// The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  final pulumi.Input<String>? protectionLevel;

  /// Creates a new [CryptoKeyVersionTemplate].
  /// [algorithm] The algorithm to use when creating a version based on this template.
  /// [protectionLevel] The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  CryptoKeyVersionTemplate({
    required this.algorithm,
    this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'protectionLevel': ?protectionLevel,
    };
  }

  factory CryptoKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionTemplate(
      algorithm: (map['algorithm'] as String).input(),
      protectionLevel: map['protectionLevel'] == null ? null : (map['protectionLevel']! as String).input(),
    );
  }
}

