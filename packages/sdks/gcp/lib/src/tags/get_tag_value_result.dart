// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTagValue.
class GetTagValueResult {
  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String createTime;
  final String description;
  /// an identifier for the resource with format `tagValues/{{name}}`
  final String id;
  /// The generated numeric id for the TagValue.
  final String name;
  /// Namespaced name of the TagValue.
  final String namespacedName;
  final String parent;
  final String shortName;
  /// Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String updateTime;

  /// Creates a new [GetTagValueResult].
  /// [createTime] Creation time.
  /// [description] Required.
  /// [id] an identifier for the resource with format `tagValues/{{name}}`
  /// [name] The generated numeric id for the TagValue.
  /// [namespacedName] Namespaced name of the TagValue.
  /// [parent] Required.
  /// [shortName] Required.
  /// [updateTime] Update time.
  const GetTagValueResult({
    required this.createTime,
    required this.description,
    required this.id,
    required this.name,
    required this.namespacedName,
    required this.parent,
    required this.shortName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'name': name,
      'namespacedName': namespacedName,
      'parent': parent,
      'shortName': shortName,
      'updateTime': updateTime,
    };
  }

  factory GetTagValueResult.fromMap(Map<String, dynamic> map) {
    return GetTagValueResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namespacedName: map['namespacedName'] as String,
      parent: map['parent'] as String,
      shortName: map['shortName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

