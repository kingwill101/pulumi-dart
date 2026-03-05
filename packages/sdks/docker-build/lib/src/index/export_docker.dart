// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compression_type.dart';

class ExportDocker {
  /// Attach an arbitrary key/value annotation to the image.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The compression type to use.
  final pulumi.Input<CompressionType>? compression;
  /// Compression level from 0 to 22.
  final pulumi.Input<int>? compressionLevel;
  /// The local export path.
  final pulumi.Input<String>? dest;
  /// Forcefully apply compression.
  final pulumi.Input<bool>? forceCompression;
  /// Specify images names to export. This is overridden if tags are already specified.
  final pulumi.Input<List<String>>? names;
  /// Use OCI media types in exporter manifests.
  final pulumi.Input<bool>? ociMediaTypes;
  /// Bundle the output into a tarball layout.
  final pulumi.Input<bool>? tar;

  /// Creates a new [ExportDocker].
  /// [annotations] Attach an arbitrary key/value annotation to the image.
  /// [compression] The compression type to use.
  /// [compressionLevel] Compression level from 0 to 22.
  /// [dest] The local export path.
  /// [forceCompression] Forcefully apply compression.
  /// [names] Specify images names to export. This is overridden if tags are already specified.
  /// [ociMediaTypes] Use OCI media types in exporter manifests.
  /// [tar] Bundle the output into a tarball layout.
  ExportDocker({
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
      'compression': ?pulumi.Input.mapOptionalInputValue<CompressionType, String>(compression, (value) => value.wireValue),
      'compressionLevel': ?compressionLevel,
      'dest': ?dest,
      'forceCompression': ?forceCompression,
      'names': ?names,
      'ociMediaTypes': ?ociMediaTypes,
      'tar': ?tar,
    };
  }

  factory ExportDocker.fromMap(Map<String, dynamic> map) {
    return ExportDocker(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompressionType.fromValue(guardedValue as String)); })(),
      compressionLevel: (() { final guardedValue = map['compressionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dest: (() { final guardedValue = map['dest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceCompression: (() { final guardedValue = map['forceCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ociMediaTypes: (() { final guardedValue = map['ociMediaTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tar: (() { final guardedValue = map['tar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

