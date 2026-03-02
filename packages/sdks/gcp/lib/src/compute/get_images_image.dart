// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  /// The size of the image tar.gz archive stored in Google Cloud Storage in bytes.
  final pulumi.Input<int> archiveSizeBytes;
  /// The creation timestamp in RFC3339 text format.
  final pulumi.Input<String> creationTimestamp;
  /// An optional description of this image.
  final pulumi.Input<String> description;
  /// The size of the image when restored onto a persistent disk in gigabytes.
  final pulumi.Input<int> diskSizeGb;
  /// The family name of the image.
  final pulumi.Input<String> family;
  final pulumi.Input<int> imageId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>> labels;
  /// The name of the image.
  final pulumi.Input<String> name;
  /// The URI of the image.
  final pulumi.Input<String> selfLink;
  /// The URL of the source disk used to create this image.
  final pulumi.Input<String> sourceDisk;
  /// The ID value of the disk used to create this image.
  final pulumi.Input<String> sourceDiskId;
  /// The ID value of the image used to create this image.
  final pulumi.Input<String> sourceImageId;

  /// Creates a new [GetImagesImage].
  /// [archiveSizeBytes] The size of the image tar.gz archive stored in Google Cloud Storage in bytes.
  /// [creationTimestamp] The creation timestamp in RFC3339 text format.
  /// [description] An optional description of this image.
  /// [diskSizeGb] The size of the image when restored onto a persistent disk in gigabytes.
  /// [family] The family name of the image.
  /// [imageId] Required.
  /// [labels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [name] The name of the image.
  /// [selfLink] The URI of the image.
  /// [sourceDisk] The URL of the source disk used to create this image.
  /// [sourceDiskId] The ID value of the disk used to create this image.
  /// [sourceImageId] The ID value of the image used to create this image.
  GetImagesImage({
    required this.archiveSizeBytes,
    required this.creationTimestamp,
    required this.description,
    required this.diskSizeGb,
    required this.family,
    required this.imageId,
    required this.labels,
    required this.name,
    required this.selfLink,
    required this.sourceDisk,
    required this.sourceDiskId,
    required this.sourceImageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveSizeBytes': archiveSizeBytes,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'diskSizeGb': diskSizeGb,
      'family': family,
      'imageId': imageId,
      'labels': labels,
      'name': name,
      'selfLink': selfLink,
      'sourceDisk': sourceDisk,
      'sourceDiskId': sourceDiskId,
      'sourceImageId': sourceImageId,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      archiveSizeBytes: (map['archiveSizeBytes'] as int).input(),
      creationTimestamp: (map['creationTimestamp'] as String).input(),
      description: (map['description'] as String).input(),
      diskSizeGb: (map['diskSizeGb'] as int).input(),
      family: (map['family'] as String).input(),
      imageId: (map['imageId'] as int).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      selfLink: (map['selfLink'] as String).input(),
      sourceDisk: (map['sourceDisk'] as String).input(),
      sourceDiskId: (map['sourceDiskId'] as String).input(),
      sourceImageId: (map['sourceImageId'] as String).input(),
    );
  }
}

