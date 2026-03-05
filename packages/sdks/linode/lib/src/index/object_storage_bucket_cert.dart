// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObjectStorageBucketCert {
  /// The Base64 encoded and PEM formatted SSL certificate.
  final pulumi.Input<String> certificate;
  /// The private key associated with the TLS/SSL certificate.
  final pulumi.Input<String> privateKey;

  /// Creates a new [ObjectStorageBucketCert].
  /// [certificate] The Base64 encoded and PEM formatted SSL certificate.
  /// [privateKey] The private key associated with the TLS/SSL certificate.
  ObjectStorageBucketCert({
    required this.certificate,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'privateKey': privateKey,
    };
  }

  factory ObjectStorageBucketCert.fromMap(Map<String, dynamic> map) {
    return ObjectStorageBucketCert(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}

