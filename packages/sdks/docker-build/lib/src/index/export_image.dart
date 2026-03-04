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

  /// Name image with `prefix@&lt;digest&gt;`, used for anonymous images.
  final pulumi.Input<String>? danglingNamePrefix;

  /// Forcefully apply compression.
  final pulumi.Input<bool>? forceCompression;

  /// Allow pushing to an insecure registry.
  final pulumi.Input<bool>? insecure;

  /// Add additional canonical name (`name@&lt;digest&gt;`).
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
  /// [danglingNamePrefix] Name image with `prefix@&lt;digest&gt;`, used for anonymous images.
  /// [forceCompression] Forcefully apply compression.
  /// [insecure] Allow pushing to an insecure registry.
  /// [nameCanonical] Add additional canonical name (`name@&lt;digest&gt;`).
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
      'compression':
          ?pulumi.Input.mapOptionalInputValue<CompressionType, String>(
            compression,
            (value) => value.wireValue,
          ),
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
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      compression: (() {
        final guardedValue = map['compression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CompressionType.fromValue(guardedValue as String),
        );
      })(),
      compressionLevel: (() {
        final guardedValue = map['compressionLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      danglingNamePrefix: (() {
        final guardedValue = map['danglingNamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceCompression: (() {
        final guardedValue = map['forceCompression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      insecure: (() {
        final guardedValue = map['insecure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nameCanonical: (() {
        final guardedValue = map['nameCanonical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      names: (() {
        final guardedValue = map['names'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ociMediaTypes: (() {
        final guardedValue = map['ociMediaTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      push: (() {
        final guardedValue = map['push'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      pushByDigest: (() {
        final guardedValue = map['pushByDigest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      store: (() {
        final guardedValue = map['store'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      unpack: (() {
        final guardedValue = map['unpack'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
