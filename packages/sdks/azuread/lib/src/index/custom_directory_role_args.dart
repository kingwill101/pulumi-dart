// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_directory_role_permission.dart';

/// {@template pulumi_index_custom_directory_role_custom_directory_role_args_doc}
/// The set of arguments for CustomDirectoryRole.
/// {@endtemplate}
/// {@macro pulumi_index_custom_directory_role_custom_directory_role_args_doc}
class CustomDirectoryRoleArgs {
  /// The description of the custom directory role.
  final pulumi.Input<String>? description;
  /// The display name of the custom directory role.
  final pulumi.Input<String> displayName;
  /// Indicates whether the role is enabled for assignment.
  final pulumi.Input<bool> enabled;
  /// A collection of `permissions` blocks as documented below.
  final pulumi.Input<List<CustomDirectoryRolePermission>> permissions;
  /// Custom template identifier that is typically used if one needs an identifier to be the same across different directories. Changing this forces a new resource to be created.
  final pulumi.Input<String>? templateId;
  /// The version of the role definition. This can be any arbitrary string between 1-128 characters.
  final pulumi.Input<String> version;

  /// Creates a new [CustomDirectoryRoleArgs].
  /// [description] The description of the custom directory role.
  /// [displayName] The display name of the custom directory role.
  /// [enabled] Indicates whether the role is enabled for assignment.
  /// [permissions] A collection of `permissions` blocks as documented below.
  /// [templateId] Custom template identifier that is typically used if one needs an identifier to be the same across different directories. Changing this forces a new resource to be created.
  /// [version] The version of the role definition. This can be any arbitrary string between 1-128 characters.
  CustomDirectoryRoleArgs({
    this.description,
    required this.displayName,
    required this.enabled,
    required this.permissions,
    this.templateId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'enabled': enabled,
      'permissions': pulumi.Input.mapInputValue<List<CustomDirectoryRolePermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<CustomDirectoryRolePermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateId': ?templateId,
      'version': version,
    };
  }

  factory CustomDirectoryRoleArgs.fromMap(Map<String, dynamic> map) {
    return CustomDirectoryRoleArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      permissions: (pulumi.Input.decodeList<CustomDirectoryRolePermission>(map['permissions'], (value) => CustomDirectoryRolePermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

