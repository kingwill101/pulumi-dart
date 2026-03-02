// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters of the raw disk image.
class ImageRawDiskResponseComputeBeta {
  /// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
  final pulumi.Input<String> containerType;
  /// [Deprecated] This field is deprecated. An optional SHA1 checksum of the disk image before unpackaging provided by the client when the disk image is created.
  final pulumi.Input<String> sha1Checksum;
  /// The full Google Cloud Storage URL where the raw disk image archive is stored. The following are valid formats for the URL: - https://storage.googleapis.com/bucket_name/image_archive_name - https://storage.googleapis.com/bucket_name/folder_name/ image_archive_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String> source;

  /// Creates a new [ImageRawDiskResponseComputeBeta].
  /// [containerType] The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
  /// [sha1Checksum] [Deprecated] This field is deprecated. An optional SHA1 checksum of the disk image before unpackaging provided by the client when the disk image is created.
  /// [source] The full Google Cloud Storage URL where the raw disk image archive is stored. The following are valid formats for the URL: - https://storage.googleapis.com/bucket_name/image_archive_name - https://storage.googleapis.com/bucket_name/folder_name/ image_archive_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  ImageRawDiskResponseComputeBeta({
    required this.containerType,
    required this.sha1Checksum,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerType': containerType,
      'sha1Checksum': sha1Checksum,
      'source': source,
    };
  }

  factory ImageRawDiskResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ImageRawDiskResponseComputeBeta(
      containerType: (map['containerType'] as String).input(),
      sha1Checksum: (map['sha1Checksum'] as String).input(),
      source: (map['source'] as String).input(),
    );
  }
}

