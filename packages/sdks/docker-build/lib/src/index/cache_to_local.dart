// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_mode.dart';
import 'compression_type.dart';

class CacheToLocal {
  /// The compression type to use.
  final pulumi.Input<CompressionType>? compression;
  /// Compression level from 0 to 22.
  final pulumi.Input<int>? compressionLevel;
  /// Path of the local directory to export the cache.
  final pulumi.Input<String> dest;
  /// Forcefully apply compression.
  final pulumi.Input<bool>? forceCompression;
  /// Ignore errors caused by failed cache exports.
  final pulumi.Input<bool>? ignoreError;
  /// The cache mode to use. Defaults to `min`.
  final pulumi.Input<CacheMode>? mode;

  /// Creates a new [CacheToLocal].
  /// [compression] The compression type to use.
  /// [compressionLevel] Compression level from 0 to 22.
  /// [dest] Path of the local directory to export the cache.
  /// [forceCompression] Forcefully apply compression.
  /// [ignoreError] Ignore errors caused by failed cache exports.
  /// [mode] The cache mode to use. Defaults to `min`.
  const CacheToLocal({
    this.compression,
    this.compressionLevel,
    required this.dest,
    this.forceCompression,
    this.ignoreError,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?pulumi.Input.mapOptionalInputValue<CompressionType, String>(compression, (value) => value.wireValue),
      'compressionLevel': ?compressionLevel,
      'dest': dest,
      'forceCompression': ?forceCompression,
      'ignoreError': ?ignoreError,
      'mode': ?pulumi.Input.mapOptionalInputValue<CacheMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory CacheToLocal.fromMap(Map<String, dynamic> map) {
    return CacheToLocal(
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompressionType.fromValue(guardedValue as String)); })(),
      compressionLevel: (() { final guardedValue = map['compressionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dest: pulumi.Input.fromValue(map['dest'] as String),
      forceCompression: (() { final guardedValue = map['forceCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreError: (() { final guardedValue = map['ignoreError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheMode.fromValue(guardedValue as String)); })(),
    );
  }
}

