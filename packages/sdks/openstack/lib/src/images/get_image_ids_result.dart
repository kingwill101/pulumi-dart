// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImageIds.
class GetImageIdsResult {
  final String? containerFormat;
  final String? diskFormat;
  final bool? hidden;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? memberStatus;
  final String? name;
  final String? nameRegex;
  final String? owner;
  final Map<String, String>? properties;
  final String region;
  final int? sizeMax;
  final int? sizeMin;
  final String? sort;
  final String? tag;
  final List<String>? tags;
  final String? visibility;

  /// Creates a new [GetImageIdsResult].
  /// [containerFormat] Optional.
  /// [diskFormat] Optional.
  /// [hidden] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [memberStatus] Optional.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [owner] Optional.
  /// [properties] Optional.
  /// [region] Required.
  /// [sizeMax] Optional.
  /// [sizeMin] Optional.
  /// [sort] Optional.
  /// [tag] Optional.
  /// [tags] Optional.
  /// [visibility] Optional.
  GetImageIdsResult({
    this.containerFormat,
    this.diskFormat,
    this.hidden,
    required this.id,
    required this.ids,
    this.memberStatus,
    this.name,
    this.nameRegex,
    this.owner,
    this.properties,
    required this.region,
    this.sizeMax,
    this.sizeMin,
    this.sort,
    this.tag,
    this.tags,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerFormat': ?containerFormat,
      'diskFormat': ?diskFormat,
      'hidden': ?hidden,
      'id': id,
      'ids': ids,
      'memberStatus': ?memberStatus,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'owner': ?owner,
      'properties': ?properties,
      'region': region,
      'sizeMax': ?sizeMax,
      'sizeMin': ?sizeMin,
      'sort': ?sort,
      'tag': ?tag,
      'tags': ?tags,
      'visibility': ?visibility,
    };
  }

  factory GetImageIdsResult.fromMap(Map<String, dynamic> map) {
    return GetImageIdsResult(
      containerFormat: map['containerFormat'] == null ? null : map['containerFormat']! as String,
      diskFormat: map['diskFormat'] == null ? null : map['diskFormat']! as String,
      hidden: map['hidden'] == null ? null : map['hidden']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      memberStatus: map['memberStatus'] == null ? null : map['memberStatus']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      owner: map['owner'] == null ? null : map['owner']! as String,
      properties: map['properties'] == null ? null : (map['properties']! as Map).cast<String, String>(),
      region: map['region'] as String,
      sizeMax: map['sizeMax'] == null ? null : map['sizeMax']! as int,
      sizeMin: map['sizeMin'] == null ? null : map['sizeMin']! as int,
      sort: map['sort'] == null ? null : map['sort']! as String,
      tag: map['tag'] == null ? null : map['tag']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as List).cast<String>(),
      visibility: map['visibility'] == null ? null : map['visibility']! as String,
    );
  }
}

