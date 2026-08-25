// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagValue resources.
class TagValueState {
  /// Output only. Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-assigned description of the TagValue. Must not exceed 256 characters.
  final pulumi.Input<String?>? description;
  /// The generated numeric id for the TagValue.
  final pulumi.Input<String?>? name;
  /// Output only. Namespaced name of the TagValue. Will be in the format {parentNamespace}/{tagKeyShortName}/{shortName}.
  final pulumi.Input<String?>? namespacedName;
  /// Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}.
  final pulumi.Input<String?>? parent;
  /// Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  final pulumi.Input<String?>? shortName;
  /// Output only. Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [TagValueState].
  /// [createTime] Output only. Creation time.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-assigned description of the TagValue. Must not exceed 256 characters.
  /// [name] The generated numeric id for the TagValue.
  /// [namespacedName] Output only. Namespaced name of the TagValue. Will be in the format {parentNamespace}/{tagKeyShortName}/{shortName}.
  /// [parent] Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}.
  /// [shortName] Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// [updateTime] Output only. Update time.
  const TagValueState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.name,
    this.namespacedName,
    this.parent,
    this.shortName,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'namespacedName': ?namespacedName,
      'parent': ?parent,
      'shortName': ?shortName,
      'updateTime': ?updateTime,
    };
  }

  factory TagValueState.fromMap(Map<String, dynamic> map) {
    return TagValueState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespacedName: (() { final guardedValue = map['namespacedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
