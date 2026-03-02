// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagValuesValue {
  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> createTime;
  /// User-assigned description of the TagValue.
  final pulumi.Input<String> description;
  /// an identifier for the resource with format `tagValues/{{name}}`
  final pulumi.Input<String> name;
  /// Namespaced name of the TagValue.
  final pulumi.Input<String> namespacedName;
  /// The resource name of the parent tagKey in format `tagKey/{name}`.
  final pulumi.Input<String> parent;
  /// User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  final pulumi.Input<String> shortName;
  /// Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetTagValuesValue].
  /// [createTime] Creation time.
  /// [description] User-assigned description of the TagValue.
  /// [name] an identifier for the resource with format `tagValues/{{name}}`
  /// [namespacedName] Namespaced name of the TagValue.
  /// [parent] The resource name of the parent tagKey in format `tagKey/{name}`.
  /// [shortName] User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// [updateTime] Update time.
  GetTagValuesValue({
    required this.createTime,
    required this.description,
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
      'name': name,
      'namespacedName': namespacedName,
      'parent': parent,
      'shortName': shortName,
      'updateTime': updateTime,
    };
  }

  factory GetTagValuesValue.fromMap(Map<String, dynamic> map) {
    return GetTagValuesValue(
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      namespacedName: (map['namespacedName'] as String).input(),
      parent: (map['parent'] as String).input(),
      shortName: (map['shortName'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

