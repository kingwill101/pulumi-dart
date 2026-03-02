// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  /// When the image was created
  final pulumi.Input<String> created;
  /// a description of the image
  final pulumi.Input<String> description;
  /// The name of the distribution of the OS of the image.
  final pulumi.Input<String> distribution;
  /// Any applicable error message pertaining to the image
  final pulumi.Input<String> errorMessage;
  /// The ID of the image.
  final pulumi.Input<int> id;
  /// The id of the image (legacy parameter).
  final pulumi.Input<String> image;
  /// The minimum 'disk' required for the image.
  final pulumi.Input<int> minDiskSize;
  /// The name of the image.
  final pulumi.Input<String> name;
  /// Is image a public image or not. Public images represent
  /// Linux distributions or One-Click Applications, while non-public images represent
  /// snapshots and backups and are only available within your account.
  final pulumi.Input<bool> private;
  /// A set of the regions that the image is available in.
  final pulumi.Input<List<String>> regions;
  /// The size of the image in GB.
  final pulumi.Input<double> sizeGigabytes;
  /// Unique text identifier of the image.
  final pulumi.Input<String> slug;
  /// Current status of the image
  final pulumi.Input<String> status;
  /// A set of tags applied to the image
  final pulumi.Input<List<String>> tags;
  /// Type of the image.
  final pulumi.Input<String> type;

  /// Creates a new [GetImagesImage].
  /// [created] When the image was created
  /// [description] a description of the image
  /// [distribution] The name of the distribution of the OS of the image.
  /// [errorMessage] Any applicable error message pertaining to the image
  /// [id] The ID of the image.
  /// [image] The id of the image (legacy parameter).
  /// [minDiskSize] The minimum 'disk' required for the image.
  /// [name] The name of the image.
  /// [private] Is image a public image or not. Public images represent
  /// [regions] A set of the regions that the image is available in.
  /// [sizeGigabytes] The size of the image in GB.
  /// [slug] Unique text identifier of the image.
  /// [status] Current status of the image
  /// [tags] A set of tags applied to the image
  /// [type] Type of the image.
  GetImagesImage({
    required this.created,
    required this.description,
    required this.distribution,
    required this.errorMessage,
    required this.id,
    required this.image,
    required this.minDiskSize,
    required this.name,
    required this.private,
    required this.regions,
    required this.sizeGigabytes,
    required this.slug,
    required this.status,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'description': description,
      'distribution': distribution,
      'errorMessage': errorMessage,
      'id': id,
      'image': image,
      'minDiskSize': minDiskSize,
      'name': name,
      'private': private,
      'regions': regions,
      'sizeGigabytes': sizeGigabytes,
      'slug': slug,
      'status': status,
      'tags': tags,
      'type': type,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      created: (map['created'] as String).input(),
      description: (map['description'] as String).input(),
      distribution: (map['distribution'] as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      id: (map['id'] as int).input(),
      image: (map['image'] as String).input(),
      minDiskSize: (map['minDiskSize'] as int).input(),
      name: (map['name'] as String).input(),
      private: (map['private'] as bool).input(),
      regions: ((map['regions'] as List).cast<String>()).input(),
      sizeGigabytes: (map['sizeGigabytes'] as double).input(),
      slug: (map['slug'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

