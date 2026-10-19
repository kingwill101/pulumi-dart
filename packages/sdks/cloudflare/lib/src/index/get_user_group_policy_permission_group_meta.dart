// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupPolicyPermissionGroupMeta {
  /// A category used to group permission groups.
  final pulumi.Input<String> category;
  /// Indicates whether the permission group is deprecated.
  final pulumi.Input<String> deprecated;
  /// Additional information about the permission group.
  final pulumi.Input<String> description;
  /// Indicates whether the permission group can be edited.
  final pulumi.Input<String> editable;
  /// The planned end-of-life date and time, when provided.
  final pulumi.Input<String> eolAt;
  /// A label identifying the permission group.
  final pulumi.Input<String> label;
  /// The scope associated with the permission group.
  final pulumi.Input<String> scopes;
  /// Indicates the permission group's availability or visibility.
  final pulumi.Input<String> visibility;

  /// Creates a new [GetUserGroupPolicyPermissionGroupMeta].
  /// [category] A category used to group permission groups.
  /// [deprecated] Indicates whether the permission group is deprecated.
  /// [description] Additional information about the permission group.
  /// [editable] Indicates whether the permission group can be edited.
  /// [eolAt] The planned end-of-life date and time, when provided.
  /// [label] A label identifying the permission group.
  /// [scopes] The scope associated with the permission group.
  /// [visibility] Indicates the permission group's availability or visibility.
  const GetUserGroupPolicyPermissionGroupMeta({
    required this.category,
    required this.deprecated,
    required this.description,
    required this.editable,
    required this.eolAt,
    required this.label,
    required this.scopes,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'deprecated': deprecated,
      'description': description,
      'editable': editable,
      'eolAt': eolAt,
      'label': label,
      'scopes': scopes,
      'visibility': visibility,
    };
  }

  factory GetUserGroupPolicyPermissionGroupMeta.fromMap(Map<String, dynamic> map) {
    return GetUserGroupPolicyPermissionGroupMeta(
      category: pulumi.Input.fromValue(map['category'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      editable: pulumi.Input.fromValue(map['editable'] as String),
      eolAt: pulumi.Input.fromValue(map['eolAt'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      scopes: pulumi.Input.fromValue(map['scopes'] as String),
      visibility: pulumi.Input.fromValue(map['visibility'] as String),
    );
  }
}
