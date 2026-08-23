// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPublishedVersion.
class GetPublishedVersionResult {
  final String blueprintName;
  /// The description of the Blueprint Published Version
  final String description;
  /// The display name of the Blueprint Published Version
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String lastModified;
  final String scopeId;
  /// The target scope
  final String targetScope;
  final String timeCreated;
  /// The type of the Blueprint
  final String type;
  final String version;

  /// Creates a new [GetPublishedVersionResult].
  /// [blueprintName] Required.
  /// [description] The description of the Blueprint Published Version
  /// [displayName] The display name of the Blueprint Published Version
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] Required.
  /// [scopeId] Required.
  /// [targetScope] The target scope
  /// [timeCreated] Required.
  /// [type] The type of the Blueprint
  /// [version] Required.
  const GetPublishedVersionResult({
    required this.blueprintName,
    required this.description,
    required this.displayName,
    required this.id,
    required this.lastModified,
    required this.scopeId,
    required this.targetScope,
    required this.timeCreated,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': blueprintName,
      'description': description,
      'displayName': displayName,
      'id': id,
      'lastModified': lastModified,
      'scopeId': scopeId,
      'targetScope': targetScope,
      'timeCreated': timeCreated,
      'type': type,
      'version': version,
    };
  }

  factory GetPublishedVersionResult.fromMap(Map<String, dynamic> map) {
    return GetPublishedVersionResult(
      blueprintName: map['blueprintName'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      scopeId: map['scopeId'] as String,
      targetScope: map['targetScope'] as String,
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}
