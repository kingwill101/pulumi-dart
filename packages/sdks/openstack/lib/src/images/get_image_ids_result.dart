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
      containerFormat: (() {
        final guardedValue = map['containerFormat'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      diskFormat: (() {
        final guardedValue = map['diskFormat'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      hidden: (() {
        final guardedValue = map['hidden'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      memberStatus: (() {
        final guardedValue = map['memberStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      region: map['region'] as String,
      sizeMax: (() {
        final guardedValue = map['sizeMax'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      sizeMin: (() {
        final guardedValue = map['sizeMin'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      sort: (() {
        final guardedValue = map['sort'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      visibility: (() {
        final guardedValue = map['visibility'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
