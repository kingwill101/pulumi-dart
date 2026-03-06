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
  const CustomImageState({
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
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minDiskSize: (() { final guardedValue = map['minDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sizeGigabytes: (() { final guardedValue = map['sizeGigabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      slug: (() { final guardedValue = map['slug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

