// ignore_for_file: unused_element, unnecessary_cast


class ObjectStorageBucketCert {
  /// The Base64 encoded and PEM formatted SSL certificate.
  final String certificate;
  /// The private key associated with the TLS/SSL certificate.
  final String privateKey;

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
      certificate: map['certificate'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}

