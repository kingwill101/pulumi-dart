// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefinition.
class GetDefinitionResult {
  /// The description of the Blueprint Definition.
  final String? description;
  /// The display name of the Blueprint Definition.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The timestamp of when this last modification was saved to the Blueprint Definition.
  final String? lastModified;
  final String? name;
  final String? scopeId;
  /// The target scope.
  final String? targetScope;
  /// The timestamp of when this Blueprint Definition was created.
  final String? timeCreated;
  /// A list of versions published for this Blueprint Definition.
  final List<String>? versions;

  /// Creates a new [GetDefinitionResult].
  /// [description] The description of the Blueprint Definition.
  /// [displayName] The display name of the Blueprint Definition.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] The timestamp of when this last modification was saved to the Blueprint Definition.
  /// [name] Optional.
  /// [scopeId] Optional.
  /// [targetScope] The target scope.
  /// [timeCreated] The timestamp of when this Blueprint Definition was created.
  /// [versions] A list of versions published for this Blueprint Definition.
  const GetDefinitionResult({
    this.description,
    this.displayName,
    this.id,
    this.lastModified,
    this.name,
    this.scopeId,
    this.targetScope,
    this.timeCreated,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'lastModified': ?lastModified,
      'name': ?name,
      'scopeId': ?scopeId,
      'targetScope': ?targetScope,
      'timeCreated': ?timeCreated,
      'versions': ?versions,
    };
  }

  factory GetDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetDefinitionResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopeId: (() { final guardedValue = map['scopeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetScope: (() { final guardedValue = map['targetScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
