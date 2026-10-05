// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTagValue.
class GetTagValueResult {
  /// Creation time.
  final String? createTime;
  /// Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  final String? description;
  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  final String? etag;
  /// Immutable. Resource name for TagValue in the format `tagValues/456`.
  final String? name;
  /// The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_number}/{tag_key_short_name}/{tag_value_short_name}`.
  final String? namespacedName;
  /// Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  final String? parent;
  /// Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final String? shortName;
  /// Update time.
  final String? updateTime;

  /// Creates a new [GetTagValueResult].
  /// [createTime] Creation time.
  /// [description] Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  /// [etag] Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  /// [name] Immutable. Resource name for TagValue in the format `tagValues/456`.
  /// [namespacedName] The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_number}/{tag_key_short_name}/{tag_value_short_name}`.
  /// [parent] Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  /// [shortName] Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [updateTime] Update time.
  const GetTagValueResult({
    this.createTime,
    this.description,
    this.etag,
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
      'etag': ?etag,
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
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespacedName: (() { final guardedValue = map['namespacedName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
