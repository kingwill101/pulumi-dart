// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectIdsV3.
class GetProjectIdsV3Result {
  final String description;
  final String domainId;
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? isDomain;
  final String? name;
  final String? nameRegex;
  final String? parentId;
  final String region;
  final List<String>? tags;

  /// Creates a new [GetProjectIdsV3Result].
  /// [description] Required.
  /// [domainId] Required.
  /// [enabled] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [isDomain] Optional.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [parentId] Optional.
  /// [region] Required.
  /// [tags] Optional.
  GetProjectIdsV3Result({
    required this.description,
    required this.domainId,
    this.enabled,
    required this.id,
    required this.ids,
    this.isDomain,
    this.name,
    this.nameRegex,
    this.parentId,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'domainId': domainId,
      'enabled': ?enabled,
      'id': id,
      'ids': ids,
      'isDomain': ?isDomain,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'parentId': ?parentId,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetProjectIdsV3Result.fromMap(Map<String, dynamic> map) {
    return GetProjectIdsV3Result(
      description: map['description'] as String,
      domainId: map['domainId'] as String,
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isDomain: (() { final guardedValue = map['isDomain']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

