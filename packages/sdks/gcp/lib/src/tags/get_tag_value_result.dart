// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTagValue.
class GetTagValueResult {
  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? createTime;
  final String? description;
  /// an identifier for the resource with format `tagValues/{{name}}`
  final String? id;
  /// The generated numeric id for the TagValue.
  final String? name;
  /// Namespaced name of the TagValue.
  final String? namespacedName;
  final String? parent;
  final String? shortName;
  /// Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? updateTime;

  /// Creates a new [GetTagValueResult].
  /// [createTime] Creation time.
  /// [description] Optional.
  /// [id] an identifier for the resource with format `tagValues/{{name}}`
  /// [name] The generated numeric id for the TagValue.
  /// [namespacedName] Namespaced name of the TagValue.
  /// [parent] Optional.
  /// [shortName] Optional.
  /// [updateTime] Update time.
  const GetTagValueResult({
    this.createTime,
    this.description,
    this.id,
    this.name,
    this.namespacedName,
    this.parent,
    this.shortName,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'namespacedName': ?namespacedName,
      'parent': ?parent,
      'shortName': ?shortName,
      'updateTime': ?updateTime,
    };
  }

  factory GetTagValueResult.fromMap(Map<String, dynamic> map) {
    return GetTagValueResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespacedName: (() { final guardedValue = map['namespacedName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
