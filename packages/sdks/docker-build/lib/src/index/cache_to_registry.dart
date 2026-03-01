// ignore_for_file: unused_element, unnecessary_cast

import 'cache_mode.dart';
import 'compression_type.dart';

class CacheToRegistry {
  /// The compression type to use.
  final CompressionType? compression;
  /// Compression level from 0 to 22.
  final int? compressionLevel;
  /// Forcefully apply compression.
  final bool? forceCompression;
  /// Ignore errors caused by failed cache exports.
  final bool? ignoreError;
  /// Export cache manifest as an OCI-compatible image manifest instead of a
  /// manifest list. Requires `ociMediaTypes` to also be `true`.
  ///
  /// Some registries like AWS ECR will not work with caching if this is
  /// `false`.
  ///
  /// Defaults to `false` to match Docker's default behavior.
  final bool? imageManifest;
  /// The cache mode to use. Defaults to `min`.
  final CacheMode? mode;
  /// Whether to use OCI media types in exported manifests. Defaults to
  /// `true`.
  final bool? ociMediaTypes;
  /// Fully qualified name of the cache image to import.
  final String ref;

  /// Creates a new [CacheToRegistry].
  /// [compression] The compression type to use.
  /// [compressionLevel] Compression level from 0 to 22.
  /// [forceCompression] Forcefully apply compression.
  /// [ignoreError] Ignore errors caused by failed cache exports.
  /// [imageManifest] Export cache manifest as an OCI-compatible image manifest instead of a
  /// [mode] The cache mode to use. Defaults to `min`.
  /// [ociMediaTypes] Whether to use OCI media types in exported manifests. Defaults to
  /// [ref] Fully qualified name of the cache image to import.
  CacheToRegistry({
    this.compression,
    this.compressionLevel,
    this.forceCompression,
    this.ignoreError,
    this.imageManifest,
    this.mode,
    this.ociMediaTypes,
    required this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression == null ? null : compression!.value,
      'compressionLevel': ?compressionLevel,
      'forceCompression': ?forceCompression,
      'ignoreError': ?ignoreError,
      'imageManifest': ?imageManifest,
      'mode': ?mode == null ? null : mode!.value,
      'ociMediaTypes': ?ociMediaTypes,
      'ref': ref,
    };
  }

  factory CacheToRegistry.fromMap(Map<String, dynamic> map) {
    return CacheToRegistry(
      compression: map['compression'] == null ? null : CompressionType.fromValue(map['compression'] as String),
      compressionLevel: map['compressionLevel'] == null ? null : map['compressionLevel'] as int,
      forceCompression: map['forceCompression'] == null ? null : map['forceCompression'] as bool,
      ignoreError: map['ignoreError'] == null ? null : map['ignoreError'] as bool,
      imageManifest: map['imageManifest'] == null ? null : map['imageManifest'] as bool,
      mode: map['mode'] == null ? null : CacheMode.fromValue(map['mode'] as String),
      ociMediaTypes: map['ociMediaTypes'] == null ? null : map['ociMediaTypes'] as bool,
      ref: map['ref'] as String,
    );
  }
}

