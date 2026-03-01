// ignore_for_file: unused_element, unnecessary_cast

import 'compression_type.dart';

class ExportOCI {
  /// Attach an arbitrary key/value annotation to the image.
  final Map<String, String>? annotations;
  /// The compression type to use.
  final CompressionType? compression;
  /// Compression level from 0 to 22.
  final int? compressionLevel;
  /// The local export path.
  final String? dest;
  /// Forcefully apply compression.
  final bool? forceCompression;
  /// Specify images names to export. This is overridden if tags are already specified.
  final List<String>? names;
  /// Use OCI media types in exporter manifests.
  final bool? ociMediaTypes;
  /// Bundle the output into a tarball layout.
  final bool? tar;

  /// Creates a new [ExportOCI].
  /// [annotations] Attach an arbitrary key/value annotation to the image.
  /// [compression] The compression type to use.
  /// [compressionLevel] Compression level from 0 to 22.
  /// [dest] The local export path.
  /// [forceCompression] Forcefully apply compression.
  /// [names] Specify images names to export. This is overridden if tags are already specified.
  /// [ociMediaTypes] Use OCI media types in exporter manifests.
  /// [tar] Bundle the output into a tarball layout.
  ExportOCI({
    this.annotations,
    this.compression,
    this.compressionLevel,
    this.dest,
    this.forceCompression,
    this.names,
    this.ociMediaTypes,
    this.tar,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'compression': ?compression == null ? null : compression!.value,
      'compressionLevel': ?compressionLevel,
      'dest': ?dest,
      'forceCompression': ?forceCompression,
      'names': ?names,
      'ociMediaTypes': ?ociMediaTypes,
      'tar': ?tar,
    };
  }

  factory ExportOCI.fromMap(Map<String, dynamic> map) {
    return ExportOCI(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      compression: map['compression'] == null ? null : CompressionType.fromValue(map['compression'] as String),
      compressionLevel: map['compressionLevel'] == null ? null : map['compressionLevel'] as int,
      dest: map['dest'] == null ? null : map['dest'] as String,
      forceCompression: map['forceCompression'] == null ? null : map['forceCompression'] as bool,
      names: map['names'] == null ? null : (map['names'] as List).cast<String>(),
      ociMediaTypes: map['ociMediaTypes'] == null ? null : map['ociMediaTypes'] as bool,
      tar: map['tar'] == null ? null : map['tar'] as bool,
    );
  }
}

