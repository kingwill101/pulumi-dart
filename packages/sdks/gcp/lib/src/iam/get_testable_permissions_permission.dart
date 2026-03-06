// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTestablePermissionsPermission {
  /// Whether the corresponding API has been enabled for the resource.
  final pulumi.Input<bool> apiDisabled;
  /// The level of support for custom roles. Can be one of `"NOT_SUPPORTED"`, `"SUPPORTED"`, `"TESTING"`. Default is `"SUPPORTED"`
  final pulumi.Input<String> customSupportLevel;
  /// Name of the permission.
  final pulumi.Input<String> name;
  /// Release stage of the permission.
  final pulumi.Input<String> stage;
  /// Human readable title of the permission.
  final pulumi.Input<String> title;

  /// Creates a new [GetTestablePermissionsPermission].
  /// [apiDisabled] Whether the corresponding API has been enabled for the resource.
  /// [customSupportLevel] The level of support for custom roles. Can be one of `"NOT_SUPPORTED"`, `"SUPPORTED"`, `"TESTING"`. Default is `"SUPPORTED"`
  /// [name] Name of the permission.
  /// [stage] Release stage of the permission.
  /// [title] Human readable title of the permission.
  const GetTestablePermissionsPermission({
    required this.apiDisabled,
    required this.customSupportLevel,
    required this.name,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiDisabled': apiDisabled,
      'customSupportLevel': customSupportLevel,
      'name': name,
      'stage': stage,
      'title': title,
    };
  }

  factory GetTestablePermissionsPermission.fromMap(Map<String, dynamic> map) {
    return GetTestablePermissionsPermission(
      apiDisabled: pulumi.Input.fromValue(map['apiDisabled'] as bool),
      customSupportLevel: pulumi.Input.fromValue(map['customSupportLevel'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

