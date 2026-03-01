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
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? objectId,
    pulumi.Output<List<CustomDirectoryRolePermission>>? permissions,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? version,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      permissions = pulumi.Input.asOptionalInput<List<CustomDirectoryRolePermission>>(permissions),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<CustomDirectoryRolePermission>>(pulumi.Input.decodeList<CustomDirectoryRolePermission>(map['permissions'], (value) => CustomDirectoryRolePermission.fromMap((value as Map).cast<String, dynamic>()))),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

