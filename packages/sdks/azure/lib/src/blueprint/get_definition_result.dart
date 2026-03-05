// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefinition.
class GetDefinitionResult {
  /// The description of the Blueprint Definition.
  final String description;
  /// The display name of the Blueprint Definition.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The timestamp of when this last modification was saved to the Blueprint Definition.
  final String lastModified;
  final String name;
  final String scopeId;
  /// The target scope.
  final String targetScope;
  /// The timestamp of when this Blueprint Definition was created.
  final String timeCreated;
  /// A list of versions published for this Blueprint Definition.
  final List<String> versions;

  /// Creates a new [GetDefinitionResult].
  /// [description] The description of the Blueprint Definition.
  /// [displayName] The display name of the Blueprint Definition.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] The timestamp of when this last modification was saved to the Blueprint Definition.
  /// [name] Required.
  /// [scopeId] Required.
  /// [targetScope] The target scope.
  /// [timeCreated] The timestamp of when this Blueprint Definition was created.
  /// [versions] A list of versions published for this Blueprint Definition.
  GetDefinitionResult({
    required this.description,
    required this.displayName,
    required this.id,
    required this.lastModified,
    required this.name,
    required this.scopeId,
    required this.targetScope,
    required this.timeCreated,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'id': id,
      'lastModified': lastModified,
      'name': name,
      'scopeId': scopeId,
      'targetScope': targetScope,
      'timeCreated': timeCreated,
      'versions': versions,
    };
  }

  factory GetDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetDefinitionResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      name: map['name'] as String,
      scopeId: map['scopeId'] as String,
      targetScope: map['targetScope'] as String,
      timeCreated: map['timeCreated'] as String,
      versions: (map['versions'] as List).cast<String>(),
    );
  }
}

