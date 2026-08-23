// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTagKey.
class GetTagKeyResult {
  /// Creation time.
  final String createTime;
  /// Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
  final String description;
  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
  final String etag;
  /// Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.
  final String name;
  /// Immutable. Namespaced name of the TagKey.
  final String namespacedName;
  /// Immutable. The resource name of the TagKey's parent. A TagKey can be parented by an Organization or a Project. For a TagKey parented by an Organization, its parent must be in the form `organizations/{org_id}`. For a TagKey parented by a Project, its parent can be in the form `projects/{project_id}` or `projects/{project_number}`.
  final String parent;
  /// Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
  final String purpose;
  /// Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.
  final Map<String, String> purposeData;
  /// Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final String shortName;
  /// Update time.
  final String updateTime;

  /// Creates a new [GetTagKeyResult].
  /// [createTime] Creation time.
  /// [description] Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
  /// [etag] Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
  /// [name] Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.
  /// [namespacedName] Immutable. Namespaced name of the TagKey.
  /// [parent] Immutable. The resource name of the TagKey's parent. A TagKey can be parented by an Organization or a Project. For a TagKey parented by an Organization, its parent must be in the form `organizations/{org_id}`. For a TagKey parented by a Project, its parent can be in the form `projects/{project_id}` or `projects/{project_number}`.
  /// [purpose] Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
  /// [purposeData] Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.
  /// [shortName] Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [updateTime] Update time.
  const GetTagKeyResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.name,
    required this.namespacedName,
    required this.parent,
    required this.purpose,
    required this.purposeData,
    required this.shortName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'name': name,
      'namespacedName': namespacedName,
      'parent': parent,
      'purpose': purpose,
      'purposeData': purposeData,
      'shortName': shortName,
      'updateTime': updateTime,
    };
  }

  factory GetTagKeyResult.fromMap(Map<String, dynamic> map) {
    return GetTagKeyResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      namespacedName: map['namespacedName'] as String,
      parent: map['parent'] as String,
      purpose: map['purpose'] as String,
      purposeData: (map['purposeData'] as Map).cast<String, String>(),
      shortName: map['shortName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
