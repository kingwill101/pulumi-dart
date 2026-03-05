// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagKeysKey {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  final pulumi.Input<String> allowedValuesRegex;
  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> createTime;
  /// User-assigned description of the TagKey.
  final pulumi.Input<String> description;
  /// an identifier for the resource with format `tagKeys/{{name}}`
  final pulumi.Input<String> name;
  /// Namespaced name of the TagKey which is in the format `{parentNamespace}/{shortName}`.
  final pulumi.Input<String> namespacedName;
  /// The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  final pulumi.Input<String> parent;
  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines.
  final pulumi.Input<String> purpose;
  /// Purpose data corresponds to the policy system that the tag is intended for. See documentation for Purpose for formatting of this field.
  final pulumi.Input<Map<String, String>> purposeData;
  /// The user friendly name for a TagKey. The short name should be unique for TagKeys wihting the same tag namespace.
  final pulumi.Input<String> shortName;
  /// Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetTagKeysKey].
  /// [allowedValuesRegex] Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  /// [createTime] Creation time.
  /// [description] User-assigned description of the TagKey.
  /// [name] an identifier for the resource with format `tagKeys/{{name}}`
  /// [namespacedName] Namespaced name of the TagKey which is in the format `{parentNamespace}/{shortName}`.
  /// [parent] The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  /// [purpose] A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines.
  /// [purposeData] Purpose data corresponds to the policy system that the tag is intended for. See documentation for Purpose for formatting of this field.
  /// [shortName] The user friendly name for a TagKey. The short name should be unique for TagKeys wihting the same tag namespace.
  /// [updateTime] Update time.
  GetTagKeysKey({
    required this.allowedValuesRegex,
    required this.createTime,
    required this.description,
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
      'allowedValuesRegex': allowedValuesRegex,
      'createTime': createTime,
      'description': description,
      'name': name,
      'namespacedName': namespacedName,
      'parent': parent,
      'purpose': purpose,
      'purposeData': purposeData,
      'shortName': shortName,
      'updateTime': updateTime,
    };
  }

  factory GetTagKeysKey.fromMap(Map<String, dynamic> map) {
    return GetTagKeysKey(
      allowedValuesRegex: pulumi.Input.fromValue(map['allowedValuesRegex'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespacedName: pulumi.Input.fromValue(map['namespacedName'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      purposeData: pulumi.Input.fromValue((map['purposeData'] as Map).cast<String, String>()),
      shortName: pulumi.Input.fromValue(map['shortName'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

