// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// The checksum of the data associated with the image.
  final String checksum;
  /// The format of the image's container.
  final String? containerFormat;
  /// The date the image was created.
  final String createdAt;
  /// The format of the image's disk.
  final String? diskFormat;
  /// the trailing path after the glance endpoint that represent the
  /// location of the image or the path to retrieve it.
  final String file;
  final bool? hidden;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? memberStatus;
  /// The metadata associated with the image. Image metadata allow for
  /// meaningfully define the image properties and tags. See
  /// https://docs.openstack.org/glance/latest/user/metadefs-concepts.html.
  final Map<String, String> metadata;
  /// The minimum amount of disk space required to use the image.
  final int minDiskGb;
  /// The minimum amount of ram required to use the image.
  final int minRamMb;
  final bool? mostRecent;
  final String? name;
  final String? nameRegex;
  final String? owner;
  /// Freeform information about the image.
  final Map<String, String>? properties;
  /// Whether or not the image is protected.
  final bool protected;
  final String region;
  /// The path to the JSON-schema that represent the image
  final String schema;
  /// The size of the image (in bytes).
  final int sizeBytes;
  final int? sizeMax;
  final int? sizeMin;
  final String? sort;
  final String? tag;
  /// The tags list of the image.
  final List<String> tags;
  /// The date the image was last updated.
  final String updatedAt;
  final String? visibility;

  /// Creates a new [GetImageResult].
  /// [checksum] The checksum of the data associated with the image.
  /// [containerFormat] The format of the image's container.
  /// [createdAt] The date the image was created.
  /// [diskFormat] The format of the image's disk.
  /// [file] the trailing path after the glance endpoint that represent the
  /// [hidden] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [memberStatus] Optional.
  /// [metadata] The metadata associated with the image. Image metadata allow for
  /// [minDiskGb] The minimum amount of disk space required to use the image.
  /// [minRamMb] The minimum amount of ram required to use the image.
  /// [mostRecent] Optional.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [owner] Optional.
  /// [properties] Freeform information about the image.
  /// [protected] Whether or not the image is protected.
  /// [region] Required.
  /// [schema] The path to the JSON-schema that represent the image
  /// [sizeBytes] The size of the image (in bytes).
  /// [sizeMax] Optional.
  /// [sizeMin] Optional.
  /// [sort] Optional.
  /// [tag] Optional.
  /// [tags] The tags list of the image.
  /// [updatedAt] The date the image was last updated.
  /// [visibility] Optional.
  GetImageResult({
    required this.checksum,
    this.containerFormat,
    required this.createdAt,
    this.diskFormat,
    required this.file,
    this.hidden,
    required this.id,
    this.memberStatus,
    required this.metadata,
    required this.minDiskGb,
    required this.minRamMb,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.owner,
    this.properties,
    required this.protected,
    required this.region,
    required this.schema,
    required this.sizeBytes,
    this.sizeMax,
    this.sizeMin,
    this.sort,
    this.tag,
    required this.tags,
    required this.updatedAt,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': checksum,
      'containerFormat': ?containerFormat,
      'createdAt': createdAt,
      'diskFormat': ?diskFormat,
      'file': file,
      'hidden': ?hidden,
      'id': id,
      'memberStatus': ?memberStatus,
      'metadata': metadata,
      'minDiskGb': minDiskGb,
      'minRamMb': minRamMb,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'owner': ?owner,
      'properties': ?properties,
      'protected': protected,
      'region': region,
      'schema': schema,
      'sizeBytes': sizeBytes,
      'sizeMax': ?sizeMax,
      'sizeMin': ?sizeMin,
      'sort': ?sort,
      'tag': ?tag,
      'tags': tags,
      'updatedAt': updatedAt,
      'visibility': ?visibility,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      checksum: map['checksum'] as String,
      containerFormat: (() { final guardedValue = map['containerFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: map['createdAt'] as String,
      diskFormat: (() { final guardedValue = map['diskFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      file: map['file'] as String,
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      memberStatus: (() { final guardedValue = map['memberStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      minDiskGb: map['minDiskGb'] as int,
      minRamMb: map['minRamMb'] as int,
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      protected: map['protected'] as bool,
      region: map['region'] as String,
      schema: map['schema'] as String,
      sizeBytes: map['sizeBytes'] as int,
      sizeMax: (() { final guardedValue = map['sizeMax']; if (guardedValue == null) return null; return guardedValue as int; })(),
      sizeMin: (() { final guardedValue = map['sizeMin']; if (guardedValue == null) return null; return guardedValue as int; })(),
      sort: (() { final guardedValue = map['sort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (map['tags'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

