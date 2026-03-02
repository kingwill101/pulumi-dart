// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compression_type.dart';

class ExportImage {
  /// Attach an arbitrary key/value annotation to the image.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The compression type to use.
  final pulumi.Input<CompressionType>? compression;
  /// Compression level from 0 to 22.
  final pulumi.Input<int>? compressionLevel;
  /// Name image with `prefix@<digest>`, used for anonymous images.
  final pulumi.Input<String>? danglingNamePrefix;
  /// Forcefully apply compression.
  final pulumi.Input<bool>? forceCompression;
  /// Allow pushing to an insecure registry.
  final pulumi.Input<bool>? insecure;
  /// Add additional canonical name (`name@<digest>`).
  final pulumi.Input<bool>? nameCanonical;
  /// Specify images names to export. This is overridden if tags are already specified.
  final pulumi.Input<List<String>>? names;
  /// Use OCI media types in exporter manifests.
  final pulumi.Input<bool>? ociMediaTypes;
  /// Push after creating the image. Defaults to `false`.
  final pulumi.Input<bool>? push;
  /// Push image without name.
  final pulumi.Input<bool>? pushByDigest;
  /// Store resulting images to the worker's image store and ensure all of
  /// its blobs are in the content store.
  ///
  /// Defaults to `true`.
  ///
  /// Ignored if the worker doesn't have image store (when using OCI workers,
  /// for example).
  final pulumi.Input<bool>? store;
  /// Unpack image after creation (for use with containerd). Defaults to
  /// `false`.
  final pulumi.Input<bool>? unpack;

  /// Creates a new [ExportImage].
  /// [annotations] Attach an arbitrary key/value annotation to the image.
  /// [compression] The compression type to use.
  /// [compressionLevel] Compression level from 0 to 22.
  /// [danglingNamePrefix] Name image with `prefix@<digest>`, used for anonymous images.
  /// [forceCompression] Forcefully apply compression.
  /// [insecure] Allow pushing to an insecure registry.
  /// [nameCanonical] Add additional canonical name (`name@<digest>`).
  /// [names] Specify images names to export. This is overridden if tags are already specified.
  /// [ociMediaTypes] Use OCI media types in exporter manifests.
  /// [push] Push after creating the image. Defaults to `false`.
  /// [pushByDigest] Push image without name.
  /// [store] Store resulting images to the worker's image store and ensure all of
  /// [unpack] Unpack image after creation (for use with containerd). Defaults to
  ExportImage({
    this.annotations,
    this.compression,
    this.compressionLevel,
    this.danglingNamePrefix,
    this.forceCompression,
    this.insecure,
    this.nameCanonical,
    this.names,
    this.ociMediaTypes,
    this.push,
    this.pushByDigest,
    this.store,
    this.unpack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'compression': ?pulumi.Input.mapOptionalInputValue<CompressionType, String>(compression, (value) => value.value),
      'compressionLevel': ?compressionLevel,
      'danglingNamePrefix': ?danglingNamePrefix,
      'forceCompression': ?forceCompression,
      'insecure': ?insecure,
      'nameCanonical': ?nameCanonical,
      'names': ?names,
      'ociMediaTypes': ?ociMediaTypes,
      'push': ?push,
      'pushByDigest': ?pushByDigest,
      'store': ?store,
      'unpack': ?unpack,
    };
  }

  factory ExportImage.fromMap(Map<String, dynamic> map) {
    return ExportImage(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      compression: map['compression'] == null ? null : (CompressionType.fromValue(map['compression'] as String)).input(),
      compressionLevel: map['compressionLevel'] == null ? null : (map['compressionLevel'] as int).input(),
      danglingNamePrefix: map['danglingNamePrefix'] == null ? null : (map['danglingNamePrefix'] as String).input(),
      forceCompression: map['forceCompression'] == null ? null : (map['forceCompression'] as bool).input(),
      insecure: map['insecure'] == null ? null : (map['insecure'] as bool).input(),
      nameCanonical: map['nameCanonical'] == null ? null : (map['nameCanonical'] as bool).input(),
      names: map['names'] == null ? null : ((map['names'] as List).cast<String>()).input(),
      ociMediaTypes: map['ociMediaTypes'] == null ? null : (map['ociMediaTypes'] as bool).input(),
      push: map['push'] == null ? null : (map['push'] as bool).input(),
      pushByDigest: map['pushByDigest'] == null ? null : (map['pushByDigest'] as bool).input(),
      store: map['store'] == null ? null : (map['store'] as bool).input(),
      unpack: map['unpack'] == null ? null : (map['unpack'] as bool).input(),
    );
  }
}

