// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagKey resources.
class TagKeyState {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  final pulumi.Input<String>? allowedValuesRegex;
  /// Output only. Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// User-assigned description of the TagKey. Must not exceed 256 characters.
  final pulumi.Input<String>? description;
  /// The generated numeric id for the TagKey.
  final pulumi.Input<String>? name;
  /// Output only. Namespaced name of the TagKey.
  final pulumi.Input<String>? namespacedName;
  /// Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  final pulumi.Input<String>? parent;
  /// Optional. A purpose cannot be changed once set.
  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag.
  /// Possible values are: `GCE_FIREWALL`, `DATA_GOVERNANCE`.
  final pulumi.Input<String>? purpose;
  /// Optional. Purpose data cannot be changed once set.
  /// Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: `network = "<project-name>/<vpc-name>"`.
  final pulumi.Input<Map<String, String>>? purposeData;
  /// Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  final pulumi.Input<String>? shortName;
  /// Output only. Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TagKeyState].
  /// [allowedValuesRegex] Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  /// [createTime] Output only. Creation time.
  /// [description] User-assigned description of the TagKey. Must not exceed 256 characters.
  /// [name] The generated numeric id for the TagKey.
  /// [namespacedName] Output only. Namespaced name of the TagKey.
  /// [parent] Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  /// [purpose] Optional. A purpose cannot be changed once set.
  /// [purposeData] Optional. Purpose data cannot be changed once set.
  /// [shortName] Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  /// [updateTime] Output only. Update time.
  TagKeyState({
    this.allowedValuesRegex,
    this.createTime,
    this.description,
    this.name,
    this.namespacedName,
    this.parent,
    this.purpose,
    this.purposeData,
    this.shortName,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValuesRegex': ?allowedValuesRegex,
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'namespacedName': ?namespacedName,
      'parent': ?parent,
      'purpose': ?purpose,
      'purposeData': ?purposeData,
      'shortName': ?shortName,
      'updateTime': ?updateTime,
    };
  }

  factory TagKeyState.fromMap(Map<String, dynamic> map) {
    return TagKeyState(
      allowedValuesRegex: map['allowedValuesRegex'] == null ? null : (map['allowedValuesRegex']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespacedName: map['namespacedName'] == null ? null : (map['namespacedName']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      purpose: map['purpose'] == null ? null : (map['purpose']! as String).input(),
      purposeData: map['purposeData'] == null ? null : ((map['purposeData']! as Map).cast<String, String>()).input(),
      shortName: map['shortName'] == null ? null : (map['shortName']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

