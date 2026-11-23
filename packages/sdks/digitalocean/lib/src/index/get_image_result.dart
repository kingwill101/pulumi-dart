// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// When the image was created
  final String? created;
  final String? description;
  /// The name of the distribution of the OS of the image.
  final String? distribution;
  /// Any applicable error message pertaining to the image
  final String? errorMessage;
  /// The ID of the image.
  final int? id;
  /// The id of the image (legacy parameter).
  final String? image;
  /// The minimum 'disk' required for the image.
  final int? minDiskSize;
  /// The name of the image.
  final String? name;
  /// Is image a public image or not. Public images represent
  /// Linux distributions or One-Click Applications, while non-public images represent
  /// snapshots and backups and are only available within your account.
  final bool? private;
  /// A set of the regions that the image is available in.
  final List<String>? regions;
  /// The size of the image in GB.
  final double? sizeGigabytes;
  /// Unique text identifier of the image.
  final String? slug;
  final String? source;
  /// Current status of the image
  final String? status;
  /// A set of tags applied to the image
  final List<String>? tags;
  /// Type of the image.
  final String? type;

  /// Creates a new [GetImageResult].
  /// [created] When the image was created
  /// [description] Optional.
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
  const GetImageResult({
    this.created,
    this.description,
    this.distribution,
    this.errorMessage,
    this.id,
    this.image,
    this.minDiskSize,
    this.name,
    this.private,
    this.regions,
    this.sizeGigabytes,
    this.slug,
    this.source,
    this.status,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'description': ?description,
      'distribution': ?distribution,
      'errorMessage': ?errorMessage,
      'id': ?id,
      'image': ?image,
      'minDiskSize': ?minDiskSize,
      'name': ?name,
      'private': ?private,
      'regions': ?regions,
      'sizeGigabytes': ?sizeGigabytes,
      'slug': ?slug,
      'source': ?source,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minDiskSize: (() { final guardedValue = map['minDiskSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      private: (() { final guardedValue = map['private']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sizeGigabytes: (() { final guardedValue = map['sizeGigabytes']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      slug: (() { final guardedValue = map['slug']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
