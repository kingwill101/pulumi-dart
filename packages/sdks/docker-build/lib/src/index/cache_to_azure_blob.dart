// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_mode.dart';

class CacheToAzureBlob {
  /// Base URL of the storage account.
  final pulumi.Input<String>? accountUrl;
  /// Ignore errors caused by failed cache exports.
  final pulumi.Input<bool>? ignoreError;
  /// The cache mode to use. Defaults to `min`.
  final pulumi.Input<CacheMode>? mode;
  /// The name of the cache image.
  final pulumi.Input<String> name;
  /// Blob storage account key.
  final pulumi.Input<String>? secretAccessKey;

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
      'mode': ?pulumi.Input.mapOptionalInputValue<CacheMode, String>(mode, (value) => value.wireValue),
      'name': name,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory CacheToAzureBlob.fromMap(Map<String, dynamic> map) {
    return CacheToAzureBlob(
      accountUrl: (() { final guardedValue = map['accountUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreError: (() { final guardedValue = map['ignoreError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheMode.fromValue(guardedValue as String)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

