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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<String>? distribution,
    pulumi.Output<int>? imageId,
    pulumi.Output<int>? minDiskSize,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? public,
    pulumi.Output<List<String>>? regions,
    pulumi.Output<double>? sizeGigabytes,
    pulumi.Output<String>? slug,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? url,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      distribution = pulumi.Input.asOptionalInput<String>(distribution),
      imageId = pulumi.Input.asOptionalInput<int>(imageId),
      minDiskSize = pulumi.Input.asOptionalInput<int>(minDiskSize),
      name = pulumi.Input.asOptionalInput<String>(name),
      public = pulumi.Input.asOptionalInput<bool>(public),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      sizeGigabytes = pulumi.Input.asOptionalInput<double>(sizeGigabytes),
      slug = pulumi.Input.asOptionalInput<String>(slug),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distribution: map['distribution'] == null ? null : pulumi.Output.create<String>(map['distribution'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<int>(map['imageId'] as int),
      minDiskSize: map['minDiskSize'] == null ? null : pulumi.Output.create<int>(map['minDiskSize'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      public: map['public'] == null ? null : pulumi.Output.create<bool>(map['public'] as bool),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
      sizeGigabytes: map['sizeGigabytes'] == null ? null : pulumi.Output.create<double>(map['sizeGigabytes'] as double),
      slug: map['slug'] == null ? null : pulumi.Output.create<String>(map['slug'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

