// ignore_for_file: unused_element, unnecessary_cast

import 'cache_mode.dart';
import 'compression_type.dart';

class CacheToLocal {
  /// The compression type to use.
  final CompressionType? compression;
  /// Compression level from 0 to 22.
  final int? compressionLevel;
  /// Path of the local directory to export the cache.
  final String dest;
  /// Forcefully apply compression.
  final bool? forceCompression;
  /// Ignore errors caused by failed cache exports.
  final bool? ignoreError;
  /// The cache mode to use. Defaults to `min`.
  final CacheMode? mode;

  /// Creates a new [CacheToLocal].
  /// [compression] The compression type to use.
  /// [compressionLevel] Compression level from 0 to 22.
  /// [dest] Path of the local directory to export the cache.
  /// [forceCompression] Forcefully apply compression.
  /// [ignoreError] Ignore errors caused by failed cache exports.
  /// [mode] The cache mode to use. Defaults to `min`.
  CacheToLocal({
    this.compression,
    this.compressionLevel,
    required this.dest,
    this.forceCompression,
    this.ignoreError,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression == null ? null : compression!.value,
      'compressionLevel': ?compressionLevel,
      'dest': dest,
      'forceCompression': ?forceCompression,
      'ignoreError': ?ignoreError,
      'mode': ?mode == null ? null : mode!.value,
    };
  }

  factory CacheToLocal.fromMap(Map<String, dynamic> map) {
    return CacheToLocal(
      compression: map['compression'] == null ? null : CompressionType.fromValue(map['compression'] as String),
      compressionLevel: map['compressionLevel'] == null ? null : map['compressionLevel'] as int,
      dest: map['dest'] as String,
      forceCompression: map['forceCompression'] == null ? null : map['forceCompression'] as bool,
      ignoreError: map['ignoreError'] == null ? null : map['ignoreError'] as bool,
      mode: map['mode'] == null ? null : CacheMode.fromValue(map['mode'] as String),
    );
  }
}

