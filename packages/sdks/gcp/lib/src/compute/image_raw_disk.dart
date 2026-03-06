// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageRawDisk {
  /// The format used to encode and transmit the block device, which
  /// should be TAR. This is just a container and transmission format
  /// and not a runtime format. Provided by the client when the disk
  /// image is created.
  /// Default value is `TAR`.
  /// Possible values are: `TAR`.
  final pulumi.Input<String>? containerType;
  /// An optional SHA1 checksum of the disk image before unpackaging.
  /// This is provided by the client when the disk image is created.
  final pulumi.Input<String>? sha1;
  /// The full Google Cloud Storage URL where disk storage is stored
  /// You must provide either this property or the sourceDisk property
  /// but not both.
  final pulumi.Input<String> source;

  /// Creates a new [ImageRawDisk].
  /// [containerType] The format used to encode and transmit the block device, which
  /// [sha1] An optional SHA1 checksum of the disk image before unpackaging.
  /// [source] The full Google Cloud Storage URL where disk storage is stored
  const ImageRawDisk({
    this.containerType,
    this.sha1,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerType': ?containerType,
      'sha1': ?sha1,
      'source': source,
    };
  }

  factory ImageRawDisk.fromMap(Map<String, dynamic> map) {
    return ImageRawDisk(
      containerType: (() { final guardedValue = map['containerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha1: (() { final guardedValue = map['sha1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

