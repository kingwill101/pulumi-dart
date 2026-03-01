// ignore_for_file: unused_element, unnecessary_cast


class CacheFromAzureBlob {
  /// Base URL of the storage account.
  final String? accountUrl;
  /// The name of the cache image.
  final String name;
  /// Blob storage account key.
  final String? secretAccessKey;

  /// Creates a new [CacheFromAzureBlob].
  /// [accountUrl] Base URL of the storage account.
  /// [name] The name of the cache image.
  /// [secretAccessKey] Blob storage account key.
  CacheFromAzureBlob({
    this.accountUrl,
    required this.name,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUrl': ?accountUrl,
      'name': name,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory CacheFromAzureBlob.fromMap(Map<String, dynamic> map) {
    return CacheFromAzureBlob(
      accountUrl: map['accountUrl'] == null ? null : map['accountUrl'] as String,
      name: map['name'] as String,
      secretAccessKey: map['secretAccessKey'] == null ? null : map['secretAccessKey'] as String,
    );
  }
}

