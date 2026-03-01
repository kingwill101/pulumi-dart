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
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<List<CustomDirectoryRolePermission>> permissions,
    pulumi.Output<String>? templateId,
    required pulumi.Output<String> version,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      enabled = pulumi.Input.asInput<bool>(enabled),
      permissions = pulumi.Input.asInput<List<CustomDirectoryRolePermission>>(permissions),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      version = pulumi.Input.asInput<String>(version);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      permissions: pulumi.Output.create<List<CustomDirectoryRolePermission>>(pulumi.Input.decodeList<CustomDirectoryRolePermission>(map['permissions'], (value) => CustomDirectoryRolePermission.fromMap((value as Map).cast<String, dynamic>()))),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

