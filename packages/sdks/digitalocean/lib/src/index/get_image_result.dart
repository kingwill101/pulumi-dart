// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// When the image was created
  final String created;
  final String description;
  /// The name of the distribution of the OS of the image.
  final String distribution;
  /// Any applicable error message pertaining to the image
  final String errorMessage;
  /// The ID of the image.
  final int id;
  /// The id of the image (legacy parameter).
  final String image;
  /// The minimum 'disk' required for the image.
  final int minDiskSize;
  /// The name of the image.
  final String name;
  /// Is image a public image or not. Public images represent
  /// Linux distributions or One-Click Applications, while non-public images represent
  /// snapshots and backups and are only available within your account.
  final bool private;
  /// A set of the regions that the image is available in.
  final List<String> regions;
  /// The size of the image in GB.
  final double sizeGigabytes;
  /// Unique text identifier of the image.
  final String slug;
  final String? source;
  /// Current status of the image
  final String status;
  /// A set of tags applied to the image
  final List<String> tags;
  /// Type of the image.
  final String type;

  /// Creates a new [GetImageResult].
  /// [created] When the image was created
  /// [description] Required.
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
  /// [source] Optional.
  /// [status] Current status of the image
  /// [tags] A set of tags applied to the image
  /// [type] Type of the image.
  GetImageResult({
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
    this.source,
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
      'source': ?source,
      'status': status,
      'tags': tags,
      'type': type,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      created: map['created'] as String,
      description: map['description'] as String,
      distribution: map['distribution'] as String,
      errorMessage: map['errorMessage'] as String,
      id: map['id'] as int,
      image: map['image'] as String,
      minDiskSize: map['minDiskSize'] as int,
      name: map['name'] as String,
      private: map['private'] as bool,
      regions: (map['regions'] as List).cast<String>(),
      sizeGigabytes: map['sizeGigabytes'] as double,
      slug: map['slug'] as String,
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

