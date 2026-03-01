// ignore_for_file: unused_element, unnecessary_cast


class CertificateCertificatePolicyKeyProperties {
  /// Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`.
  final String? curve;
  /// Is this certificate exportable?
  final bool exportable;
  /// The size of the key used in the certificate. Possible values include `2048`, `3072`, and `4096` for `RSA` keys, or `256`, `384`, and `521` for `EC` keys. This property is required when using RSA keys.
  final int? keySize;
  /// Specifies the type of key. Possible values are `EC`, `EC-HSM`, `RSA`, `RSA-HSM` and `oct`.
  final String keyType;
  /// Is the key reusable?
  final bool reuseKey;

  /// Creates a new [CertificateCertificatePolicyKeyProperties].
  /// [curve] Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`.
  /// [exportable] Is this certificate exportable?
  /// [keySize] The size of the key used in the certificate. Possible values include `2048`, `3072`, and `4096` for `RSA` keys, or `256`, `384`, and `521` for `EC` keys. This property is required when using RSA keys.
  /// [keyType] Specifies the type of key. Possible values are `EC`, `EC-HSM`, `RSA`, `RSA-HSM` and `oct`.
  /// [reuseKey] Is the key reusable?
  CertificateCertificatePolicyKeyProperties({
    this.curve,
    required this.exportable,
    this.keySize,
    required this.keyType,
    required this.reuseKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': ?curve,
      'exportable': exportable,
      'keySize': ?keySize,
      'keyType': keyType,
      'reuseKey': reuseKey,
    };
  }

  factory CertificateCertificatePolicyKeyProperties.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyKeyProperties(
      curve: map['curve'] == null ? null : map['curve'] as String,
      exportable: map['exportable'] as bool,
      keySize: map['keySize'] == null ? null : map['keySize'] as int,
      keyType: map['keyType'] as String,
      reuseKey: map['reuseKey'] as bool,
    );
  }
}

