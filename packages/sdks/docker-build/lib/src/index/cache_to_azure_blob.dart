// ignore_for_file: unused_element, unnecessary_cast

import 'cache_mode.dart';

class CacheToAzureBlob {
  /// Base URL of the storage account.
  final String? accountUrl;
  /// Ignore errors caused by failed cache exports.
  final bool? ignoreError;
  /// The cache mode to use. Defaults to `min`.
  final CacheMode? mode;
  /// The name of the cache image.
  final String name;
  /// Blob storage account key.
  final String? secretAccessKey;

  /// Creates a new [CacheToAzureBlob].
  /// [accountUrl] Base URL of the storage account.
  /// [ignoreError] Ignore errors caused by failed cache exports.
  /// [mode] The cache mode to use. Defaults to `min`.
  /// [name] The name of the cache image.
  /// [secretAccessKey] Blob storage account key.
  CacheToAzureBlob({
    this.accountUrl,
    this.ignoreError,
    this.mode,
    required this.name,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUrl': ?accountUrl,
      'ignoreError': ?ignoreError,
      'mode': ?mode == null ? null : mode!.value,
      'name': name,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory CacheToAzureBlob.fromMap(Map<String, dynamic> map) {
    return CacheToAzureBlob(
      accountUrl: map['accountUrl'] == null ? null : map['accountUrl'] as String,
      ignoreError: map['ignoreError'] == null ? null : map['ignoreError'] as bool,
      mode: map['mode'] == null ? null : CacheMode.fromValue(map['mode'] as String),
      name: map['name'] as String,
      secretAccessKey: map['secretAccessKey'] == null ? null : map['secretAccessKey'] as String,
    );
  }
}

