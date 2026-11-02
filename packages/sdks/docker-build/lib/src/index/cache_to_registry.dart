// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_mode.dart';
import 'compression_type.dart';

class CacheToRegistry {
  /// The compression type to use.
  final pulumi.Input<CompressionType?>? compression;
  /// Compression level from 0 to 22.
  final pulumi.Input<int?>? compressionLevel;
  /// Forcefully apply compression.
  final pulumi.Input<bool?>? forceCompression;
  /// Ignore errors caused by failed cache exports.
  final pulumi.Input<bool?>? ignoreError;
  /// Export cache manifest as an OCI-compatible image manifest instead of a
  /// manifest list. Requires `ociMediaTypes` to also be `true`.
  ///
  /// Some registries like AWS ECR will not work with caching if this is
  /// `false`.
  ///
  /// Defaults to `false` to match Docker's default behavior.
  final pulumi.Input<bool?>? imageManifest;
  /// The cache mode to use. Defaults to `min`.
  final pulumi.Input<CacheMode?>? mode;
  /// Whether to use OCI media types in exported manifests. Defaults to
  /// `true`.
  final pulumi.Input<bool?>? ociMediaTypes;
  /// Fully qualified name of the cache image to import.
  final pulumi.Input<String> ref;

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
    pulumi.Input<CompressionType?>? compression,
    pulumi.Input<int?>? compressionLevel,
    pulumi.Input<bool?>? forceCompression,
    pulumi.Input<bool?>? ignoreError,
    pulumi.Input<bool?>? imageManifest,
    pulumi.Input<CacheMode?>? mode,
    pulumi.Input<bool?>? ociMediaTypes,
    required this.ref,
  }) : compression = compression ?? pulumi.Input.fromValue(CompressionType.fromValue('gzip')), compressionLevel = compressionLevel ?? pulumi.Input.fromValue(0), forceCompression = forceCompression ?? pulumi.Input.fromValue(false), ignoreError = ignoreError ?? pulumi.Input.fromValue(false), imageManifest = imageManifest ?? pulumi.Input.fromValue(false), mode = mode ?? pulumi.Input.fromValue(CacheMode.fromValue('min')), ociMediaTypes = ociMediaTypes ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?pulumi.Input.mapOptionalInputValue<CompressionType, String>(compression, (value) => value.wireValue),
      'compressionLevel': ?compressionLevel,
      'forceCompression': ?forceCompression,
      'ignoreError': ?ignoreError,
      'imageManifest': ?imageManifest,
      'mode': ?pulumi.Input.mapOptionalInputValue<CacheMode, String>(mode, (value) => value.wireValue),
      'ociMediaTypes': ?ociMediaTypes,
      'ref': ref,
    };
  }

  factory CacheToRegistry.fromMap(Map<String, dynamic> map) {
    return CacheToRegistry(
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompressionType.fromValue(guardedValue as String)); })(),
      compressionLevel: (() { final guardedValue = map['compressionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      forceCompression: (() { final guardedValue = map['forceCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreError: (() { final guardedValue = map['ignoreError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageManifest: (() { final guardedValue = map['imageManifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheMode.fromValue(guardedValue as String)); })(),
      ociMediaTypes: (() { final guardedValue = map['ociMediaTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ref: pulumi.Input.fromValue(map['ref'] as String),
    );
  }
}
