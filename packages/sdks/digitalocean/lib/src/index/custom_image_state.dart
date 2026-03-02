// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomImage resources.
class CustomImageState {
  /// A time value given in ISO8601 combined date and time format that represents when the image was created.
  final pulumi.Input<String>? createdAt;
  /// An optional description for the image.
  final pulumi.Input<String>? description;
  /// An optional distribution name for the image. Valid values are documented [here](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images/operation/images_create_custom)
  final pulumi.Input<String>? distribution;
  /// A unique number that can be used to identify and reference a specific image.
  final pulumi.Input<int>? imageId;
  /// The minimum disk size in GB required for a Droplet to use this image.
  final pulumi.Input<int>? minDiskSize;
  /// A name for the Custom Image.
  final pulumi.Input<String>? name;
  /// Indicates whether the image in question is public or not.
  final pulumi.Input<bool>? public;
  /// A list of regions. (Currently only one is supported).
  final pulumi.Input<List<String>>? regions;
  /// The size of the image in gigabytes.
  final pulumi.Input<double>? sizeGigabytes;
  /// A uniquely identifying string for each image.
  final pulumi.Input<String>? slug;
  /// A status string indicating the state of a custom image.
  final pulumi.Input<String>? status;
  /// A list of optional tags for the image.
  final pulumi.Input<List<String>>? tags;
  /// Describes the kind of image.
  final pulumi.Input<String>? type;
  /// A URL from which the custom Linux virtual machine image may be retrieved.
  final pulumi.Input<String>? url;

  /// Creates a new [CustomImageState].
  /// [createdAt] A time value given in ISO8601 combined date and time format that represents when the image was created.
  /// [description] An optional description for the image.
  /// [distribution] An optional distribution name for the image. Valid values are documented [here](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images/operation/images_create_custom)
  /// [imageId] A unique number that can be used to identify and reference a specific image.
  /// [minDiskSize] The minimum disk size in GB required for a Droplet to use this image.
  /// [name] A name for the Custom Image.
  /// [public] Indicates whether the image in question is public or not.
  /// [regions] A list of regions. (Currently only one is supported).
  /// [sizeGigabytes] The size of the image in gigabytes.
  /// [slug] A uniquely identifying string for each image.
  /// [status] A status string indicating the state of a custom image.
  /// [tags] A list of optional tags for the image.
  /// [type] Describes the kind of image.
  /// [url] A URL from which the custom Linux virtual machine image may be retrieved.
  CustomImageState({
    this.createdAt,
    this.description,
    this.distribution,
    this.imageId,
    this.minDiskSize,
    this.name,
    this.public,
    this.regions,
    this.sizeGigabytes,
    this.slug,
    this.status,
    this.tags,
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'distribution': ?distribution,
      'imageId': ?imageId,
      'minDiskSize': ?minDiskSize,
      'name': ?name,
      'public': ?public,
      'regions': ?regions,
      'sizeGigabytes': ?sizeGigabytes,
      'slug': ?slug,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'url': ?url,
    };
  }

  factory CustomImageState.fromMap(Map<String, dynamic> map) {
    return CustomImageState(
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      distribution: map['distribution'] == null ? null : (map['distribution']! as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as int).input(),
      minDiskSize: map['minDiskSize'] == null ? null : (map['minDiskSize']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      public: map['public'] == null ? null : (map['public']! as bool).input(),
      regions: map['regions'] == null ? null : ((map['regions']! as List).cast<String>()).input(),
      sizeGigabytes: map['sizeGigabytes'] == null ? null : (map['sizeGigabytes']! as double).input(),
      slug: map['slug'] == null ? null : (map['slug']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

