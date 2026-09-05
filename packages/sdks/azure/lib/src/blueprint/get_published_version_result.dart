// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPublishedVersion.
class GetPublishedVersionResult {
  final String? blueprintName;
  /// The description of the Blueprint Published Version
  final String? description;
  /// The display name of the Blueprint Published Version
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? lastModified;
  final String? scopeId;
  /// The target scope
  final String? targetScope;
  final String? timeCreated;
  /// The type of the Blueprint
  final String? type;
  final String? version;

  /// Creates a new [GetPublishedVersionResult].
  /// [blueprintName] Optional.
  /// [description] The description of the Blueprint Published Version
  /// [displayName] The display name of the Blueprint Published Version
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] Optional.
  /// [scopeId] Optional.
  /// [targetScope] The target scope
  /// [timeCreated] Optional.
  /// [type] The type of the Blueprint
  /// [version] Optional.
  const GetPublishedVersionResult({
    this.blueprintName,
    this.description,
    this.displayName,
    this.id,
    this.lastModified,
    this.scopeId,
    this.targetScope,
    this.timeCreated,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': ?blueprintName,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'lastModified': ?lastModified,
      'scopeId': ?scopeId,
      'targetScope': ?targetScope,
      'timeCreated': ?timeCreated,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetPublishedVersionResult.fromMap(Map<String, dynamic> map) {
    return GetPublishedVersionResult(
      blueprintName: (() { final guardedValue = map['blueprintName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopeId: (() { final guardedValue = map['scopeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetScope: (() { final guardedValue = map['targetScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
