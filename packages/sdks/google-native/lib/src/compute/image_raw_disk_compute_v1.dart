// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_raw_disk_container_type_compute_v1.dart';

/// The parameters of the raw disk image.
class ImageRawDiskComputeV1 {
  /// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
  final pulumi.Input<ImageRawDiskContainerTypeComputeV1>? containerType;
  /// [Deprecated] This field is deprecated. An optional SHA1 checksum of the disk image before unpackaging provided by the client when the disk image is created.
  final pulumi.Input<String>? sha1Checksum;
  /// The full Google Cloud Storage URL where the raw disk image archive is stored. The following are valid formats for the URL: - https://storage.googleapis.com/bucket_name/image_archive_name - https://storage.googleapis.com/bucket_name/folder_name/ image_archive_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? source;

  /// Creates a new [ImageRawDiskComputeV1].
  /// [containerType] The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
  /// [sha1Checksum] [Deprecated] This field is deprecated. An optional SHA1 checksum of the disk image before unpackaging provided by the client when the disk image is created.
  /// [source] The full Google Cloud Storage URL where the raw disk image archive is stored. The following are valid formats for the URL: - https://storage.googleapis.com/bucket_name/image_archive_name - https://storage.googleapis.com/bucket_name/folder_name/ image_archive_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  ImageRawDiskComputeV1({
    this.containerType,
    this.sha1Checksum,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerType': ?pulumi.Input.mapOptionalInputValue<ImageRawDiskContainerTypeComputeV1, String>(containerType, (value) => value.value),
      'sha1Checksum': ?sha1Checksum,
      'source': ?source,
    };
  }

  factory ImageRawDiskComputeV1.fromMap(Map<String, dynamic> map) {
    return ImageRawDiskComputeV1(
      containerType: map['containerType'] == null ? null : (ImageRawDiskContainerTypeComputeV1.fromValue(map['containerType'] as String)).input(),
      sha1Checksum: map['sha1Checksum'] == null ? null : (map['sha1Checksum'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

