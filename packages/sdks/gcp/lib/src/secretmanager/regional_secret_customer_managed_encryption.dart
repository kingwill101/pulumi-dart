// ignore_for_file: unused_element, unnecessary_cast


class RegionalSecretCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final String kmsKeyName;

  /// Creates a new [RegionalSecretCustomerManagedEncryption].
  /// [kmsKeyName] The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  RegionalSecretCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory RegionalSecretCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return RegionalSecretCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

