// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagValuesValue {
  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> createTime;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] User-assigned description of the TagValue.
  /// [name] an identifier for the resource with format `tagValues/{{name}}`
  /// [namespacedName] Namespaced name of the TagValue.
  /// [parent] The resource name of the parent tagKey in format `tagKey/{name}`.
  /// [shortName] User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// [updateTime] Update time.
  const GetTagValuesValue({
    required this.createTime,
    required this.deletionPolicy,
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
      'deletionPolicy': deletionPolicy,
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespacedName: pulumi.Input.fromValue(map['namespacedName'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      shortName: pulumi.Input.fromValue(map['shortName'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
