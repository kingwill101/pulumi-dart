// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_directory_role_permission.dart';

/// Input properties used for looking up and filtering CustomDirectoryRole resources.
class CustomDirectoryRoleState {
  /// The description of the custom directory role.
  final pulumi.Input<String>? description;
  /// The display name of the custom directory role.
  final pulumi.Input<String>? displayName;
  /// Indicates whether the role is enabled for assignment.
  final pulumi.Input<bool>? enabled;
  /// The object ID of the custom directory role.
  final pulumi.Input<String>? objectId;
  /// A collection of `permissions` blocks as documented below.
  final pulumi.Input<List<CustomDirectoryRolePermission>>? permissions;
  /// Custom template identifier that is typically used if one needs an identifier to be the same across different directories. Changing this forces a new resource to be created.
  final pulumi.Input<String>? templateId;
  /// The version of the role definition. This can be any arbitrary string between 1-128 characters.
  final pulumi.Input<String>? version;

  /// Creates a new [CustomDirectoryRoleState].
  /// [description] The description of the custom directory role.
  /// [displayName] The display name of the custom directory role.
  /// [enabled] Indicates whether the role is enabled for assignment.
  /// [objectId] The object ID of the custom directory role.
  /// [permissions] A collection of `permissions` blocks as documented below.
  /// [templateId] Custom template identifier that is typically used if one needs an identifier to be the same across different directories. Changing this forces a new resource to be created.
  /// [version] The version of the role definition. This can be any arbitrary string between 1-128 characters.
  CustomDirectoryRoleState({
    this.description,
    this.displayName,
    this.enabled,
    this.objectId,
    this.permissions,
    this.templateId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'objectId': ?objectId,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<CustomDirectoryRolePermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<CustomDirectoryRolePermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateId': ?templateId,
      'version': ?version,
    };
  }

  factory CustomDirectoryRoleState.fromMap(Map<String, dynamic> map) {
    return CustomDirectoryRoleState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      permissions: map['permissions'] == null ? null : (pulumi.Input.decodeList<CustomDirectoryRolePermission>(map['permissions'], (value) => CustomDirectoryRolePermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

