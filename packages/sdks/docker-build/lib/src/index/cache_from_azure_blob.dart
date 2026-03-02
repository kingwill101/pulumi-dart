// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheFromAzureBlob {
  /// Base URL of the storage account.
  final pulumi.Input<String>? accountUrl;
  /// The name of the cache image.
  final pulumi.Input<String> name;
  /// Blob storage account key.
  final pulumi.Input<String>? secretAccessKey;

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
      accountUrl: map['accountUrl'] == null ? null : (map['accountUrl']! as String).input(),
      name: (map['name'] as String).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (map['secretAccessKey']! as String).input(),
    );
  }
}

